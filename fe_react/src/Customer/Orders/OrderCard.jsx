import { Box, Grid, Typography } from "@mui/material";
import FiberManualRecordIcon from "@mui/icons-material/FiberManualRecord";
import AdjustIcon from "@mui/icons-material/Adjust";
import React from "react";
import { useNavigate } from "react-router-dom";
import StarIcon from "@mui/icons-material/Star";

const orderStatus = [
  { label: "Đang chờ phê duyệt", value: "PENDING" },
  { label: "Đã xác nhận", value: "CONFIRMED" },
  { label: "Đang giao", value: "SHIPPED" },
  { label: "Đã giao", value: "DELIVERED" },
  { label: "Đã hủy", value: "CANCELLED" },
];

// Hàm lấy trạng thái tiếng Việt từ value
const getOrderStatusLabel = (status) => {
  const statusObj = orderStatus.find((item) => item.value === status);
  return statusObj ? statusObj.label : status; // Trả về label nếu tìm thấy, ngược lại trả về giá trị gốc
};

const OrderCard = ({ item, order }) => {
  const navigate = useNavigate();
  console.log("items ", item, order, order.orderStatus);
  return (
    <Box className="p-5 shadow-lg hover:shadow-2xl border ">
      <Grid spacing={2} container sx={{ justifyContent: "space-between" }}>
        <Grid item xs={6}>
          <div
            // onClick={() => navigate(`/account/order/${order?.id}`)}
            className="flex cursor-pointer"
          >
            <img
              className="w-[5rem] h-[5rem] object-cover object-top"
              src={'http://localhost:8080' + item?.laptop.imageUrls[0]}
              alt=""
            />
            <div className="ml-5">
              <p className="mb-2">{item?.laptop.model}</p>
              <p className="opacity-50 text-xs font-semibold space-x-5">
                <span>Số lượng: {item?.quantity}</span>
                <span>Trạng thái thanh toán: {order.paymentStatus}</span>
              </p>
            </div>
          </div>
        </Grid>

        <Grid item xs={3}>
          <p>{order?.totalDiscountedPrice?.toLocaleString('vi-VN')} VND</p>
        </Grid>
        <Grid item xs={3}>
          <p className="space-y-2 font-semibold">
            <div>{getOrderStatusLabel(order?.orderStatus)}</div>
          </p>
          {item.orderStatus === "DELIVERED" && (
            <div
              // onClick={() => navigate(`/account/rate/{id}`)}
              className="flex items-center text-blue-600 cursor-pointer"
            >
              <StarIcon sx={{ fontSize: "2rem" }} className="px-2 text-5xl" />
              <span>Đánh giá sản phẩm</span>
            </div>
          )}
        </Grid>
      </Grid>
    </Box>
  );
};

export default OrderCard;
