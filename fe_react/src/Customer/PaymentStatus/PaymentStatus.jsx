import React, { useEffect, useState } from "react";
import { Alert, AlertTitle } from "@mui/material";
import { useLocation } from "react-router-dom";
import { getInfoPayment } from "../../until/common/index.js";
import api from "../../Config/api.js";

const PaymentStatus = () => {
  const location = useLocation();
  const queryParams = new URLSearchParams(location.search);
  const [info, setInfo] = useState(null); // Sử dụng `null` để kiểm tra trạng thái dễ hơn
  const [loading, setLoading] = useState(true); // Biến trạng thái để kiểm soát quá trình tải dữ liệu

  const orderCode = queryParams.get("orderCode");

  useEffect(() => {
    const getPaymentInfo = async () => {
      try {
        setLoading(true); // Bắt đầu tải dữ liệu
        const payment = await getInfoPayment(orderCode);

        // Kiểm tra dữ liệu trả về
        if (!payment || !payment.status) {
          console.error("Dữ liệu từ getInfoPayment không hợp lệ:", payment);
          setInfo({ status: "ERROR" }); // Gán trạng thái lỗi
        } else {
          setInfo(payment);

          // Xử lý cập nhật trạng thái đơn hàng
          const parts = payment?.transactions[0]?.description.split(" ") || [];
          const orderId = parts[5];
          if (orderId) {
            let paymentStatus;
            switch (payment.status) {
              case "PAID":
                paymentStatus = "COMPLETED";
                break;
              case "PENDING":
                paymentStatus = "PENDING";
                break;
              default:
                paymentStatus = "PROCESSING";
                break;
            }
            await api.put(`/api/orders/${orderId}?paymentStatus=${paymentStatus}`);
          }
        }
      } catch (error) {
        console.error("Lỗi khi lấy thông tin thanh toán:", error);
        setInfo({ status: "ERROR" }); // Gán trạng thái lỗi
      } finally {
        setLoading(false); // Hoàn thành quá trình tải
      }
    };

    getPaymentInfo();
  }, [orderCode]);

  // Hiển thị trạng thái tải dữ liệu
  if (loading) {
    return (
      <div className="px-2 lg:px-36">
        <div className="flex flex-col justify-center items-center">
          <Alert variant="outlined" severity="info">
            Đang tải thông tin thanh toán, vui lòng chờ...
          </Alert>
        </div>
      </div>
    );
  }

  // Hiển thị thông báo dựa trên trạng thái `info.status`
  return (
    <div className="px-2 lg:px-36">
      <div className="flex flex-col justify-center items-center">
        {info?.status === "PAID" ? (
          <Alert
            variant="filled"
            severity="success"
            sx={{ mb: 6, width: "fit-content" }}
          >
            <AlertTitle>Thanh toán thành công</AlertTitle>
            Bạn đã thanh toán thành công {info?.amount?.toLocaleString("vi-VN")} VND
          </Alert>
        ) : info?.status === "CANCELLED" ? (
          <Alert
            variant="filled"
            severity="error"
            sx={{ mb: 6, width: "fit-content" }}
          >
            <AlertTitle>Đơn hàng bị hủy</AlertTitle>
            Đơn hàng của bạn đã bị hủy
          </Alert>
        ) : info?.status === "PENDING" ? (
          <Alert
            variant="filled"
            severity="warning"
            sx={{ mb: 6, width: "fit-content" }}
          >
            <AlertTitle>Đang chờ thanh toán</AlertTitle>
            Đơn hàng đang chờ thanh toán
          </Alert>
        ) : info?.status === "PROCESSING" ? (
          <Alert
            variant="filled"
            severity="warning"
            sx={{ mb: 6, width: "fit-content" }}
          >
            <AlertTitle>Đang xử lý thanh toán</AlertTitle>
            Thanh toán của bạn đang được xử lý
          </Alert>
        ) : (
          <Alert
            variant="filled"
            severity="error"
            sx={{ mb: 6, width: "fit-content" }}
          >
            <AlertTitle>Lỗi</AlertTitle>
            Không thể lấy thông tin thanh toán, vui lòng thử lại sau.
          </Alert>
        )}
      </div>
    </div>
  );
};

export default PaymentStatus;
