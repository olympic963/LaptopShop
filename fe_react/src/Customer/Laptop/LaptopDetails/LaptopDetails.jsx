import { useState, useRef } from "react";
import { RadioGroup } from "@headlessui/react";
import { useNavigate, useParams } from "react-router-dom";
import LaptopReviewCard from "./LaptopReviewCard";
import {
  Box,
  Button,
  Grid,
  IconButton,
  LinearProgress,
  Rating,
  Alert,
  Snackbar,
  TextField,
} from "@mui/material";
import AddCircleOutlineIcon from "@mui/icons-material/AddCircleOutline";
import RemoveCircleOutlineIcon from "@mui/icons-material/RemoveCircleOutline";
import HomeLaptopCard from "../../Home/HomeLaptopCard";
import { useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { findLaptopById } from "../../../Redux/Admin/Laptop/Action";
import { addItemToCart, getCart } from "../../../Redux/Customers/Cart/Action";
import { getAllReviews } from "../../../Redux/Customers/Review/Action";
import api, { API_BASE_URL } from "../../../Config/api";
import axios from "axios";

const reviews = { href: "#", average: 4, totalCount: 117 };
function classNames(...classes) {
  return classes.filter(Boolean).join(" ");
}

export default function LaptopDetails() {
  const scrollRef = useRef(null);
  const [activeImage, setActiveImage] = useState(null);
  const [quantity, setQuantity] = useState(1);
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const { laptop } = useSelector((store) => store.laptop);
  const reviewStore = useSelector((store) => store.review);
  const reviewStoreaa = useSelector((store) => store);
  console.log("reviewStore: ", reviewStoreaa);
  const { laptopId } = useParams();
  const jwt = localStorage.getItem("jwt");
  const [openAlert, setOpenAlert] = useState(false);
  const [alertMessage, setAlertMessage] = useState("");
  const [alertSeverity, setAlertSeverity] = useState("success");
  const handleCloseAlert = (event, reason) => {
    if (reason === "clickaway") {
      return;
    }
    setOpenAlert(false);
  };

  useEffect(() => {
    const data = { laptopId: Number(laptopId), jwt };
    dispatch(findLaptopById(data));
    dispatch(getAllReviews(laptopId));
  }, [laptopId]);

  const [selectedColor, setSelectedColor] = useState(null);

  useEffect(() => {
    if (laptop?.laptopColors?.length > 0) {
      setSelectedColor(laptop.laptopColors[0]);
    }
  }, [laptop]);

  const handleSetActiveImage = (image) => {
    setActiveImage(image);
  };

  const handleQuantityChange = (num) => {
    setQuantity((prev) =>
      Math.min(Math.max(1, prev + num), selectedColor?.quantity ?? 200)
    ); // Ensure quantity is at least 1
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (jwt != null) {
      try {
        const data = {
          laptopId: Number(laptopId),
          colorId: selectedColor.colorId,
          quantity,
        };
        await dispatch(addItemToCart({ data, jwt }));
        dispatch(getCart(jwt));
        setAlertSeverity("success");
        setAlertMessage("Thêm vào giỏ hàng thành công!");
        setOpenAlert(true);
      } catch (error) {
        console.log("error: ", error);
        setAlertSeverity("error");
        setAlertMessage("Đã xảy ra lỗi khi thêm vào giỏ hàng!");
        setOpenAlert(true);
      }
    }
    else {
      setAlertSeverity("error");
      setAlertMessage("Bạn phải đăng nhập mới thực hiện được tính năng này");
      setOpenAlert(true);
    }
  };

  const [newReview, setNewReview] = useState({
    des: "",
    review: 0,
  });

  const handleSubmitReview = async () => {
    if (newReview.des.trim() === "") {
      setAlertSeverity("error");
      setAlertMessage("Bình luận không được để trống.");
      setOpenAlert(true);
      return;
    } else if (jwt) {
      try {
        const res = await api.post("/api/reviews/create", {
          laptopId: parseInt(laptopId),
          review: newReview.des,
        });

        await api.post("/api/ratings/create", {
          laptopId: parseInt(laptopId),
          rating: newReview.review,
        });

        if (res) {
          setNewReview({
            des: "",
            review: 0,
          });
          dispatch(getAllReviews(laptopId));
        }
      } catch (error) {
        alert(error?.response?.data?.message || "Bạn chưa đăng nhập");
        console.log("Lỗi gửi bình luận:", error);
      }
    } else if (!jwt) {
      setAlertSeverity("error");
      setAlertMessage("Bạn phải đăng nhập để bình luận!");
      setOpenAlert(true);
    }
  };

  return (
    <div className="bg-white lg:px-20">
      <Snackbar
        open={openAlert}
        autoHideDuration={2000}
        onClose={handleCloseAlert}
        anchorOrigin={{ vertical: "top", horizontal: "center" }}
      >
        <Alert
          onClose={handleCloseAlert}
          severity={alertSeverity}
          sx={{ width: "100%" }}
        >
          {alertMessage}
        </Alert>
      </Snackbar>
      <div className="pt-1">
        <section className="grid grid-cols-1 gap-x-8 gap-y-10 lg:grid-cols-2 px-4 pt-6">
          <div className="flex flex-col items-center ">
            <div className="rounded-lg border border-gray-300 w-full h-[35rem] flex justify-center items-center">
              <img
                src={activeImage || `${API_BASE_URL}${laptop?.imageUrls[0]}`}
                alt={laptop?.model}
                className="max-w-[30rem] max-h-[35rem] object-cover"
              />
            </div>
            <div className="flex flex-wrap space-x-5 justify-center">
              {laptop?.imageUrls?.map((image) => (
                <div
                  onClick={() =>
                    handleSetActiveImage(`${API_BASE_URL}${image}`)
                  }
                  className="aspect-h-2 aspect-w-3 overflow-hidden rounded-lg max-w-[5rem] max-h-[5rem] mt-4"
                >
                  <img
                    src={`${API_BASE_URL}${image}`}
                    alt={laptop?.model}
                    className="h-full w-full object-cover object-center border border-gray"
                  />
                </div>
              ))}
            </div>
          </div>
          <div>
            <div className="lg:col-span-1 mx-auto max-w-2xl px-4 pb-16 sm:px-6 lg:max-w-7xl lg:px-8 lg:pb-24">
              <h1 className="text-lg lg:text-xl font-semibold tracking-tight mt-3 text-gray-900  ">
                {laptop?.brandName} {laptop?.model}
              </h1>
              <div className="flex space-x-5 items-center text-lg lg:text-xl tracking-tight text-gray-900 mt-6">
                <p className="opacity-50 line-through">{laptop?.price.toLocaleString('vi-VN')} VND</p>
                <p className="text-green-600 font-semibold">
                  -{laptop?.discountPercent}%
                </p>
                <p className="font-semibold">
                  {((laptop?.price * (100 - laptop?.discountPercent)) / 100).toLocaleString('vi-VN')} VND
                </p>
              </div>
              {/* Categories as Hashtags */}
              {laptop?.categories?.length > 0 && (
                <div className="p-2">
                  <div className="flex flex-wrap gap-2 mt-2">
                    {laptop.categories.map((category, index) => (
                      <span
                        key={index}
                        className="inline-block px-3 py-1 bg-gray-100 text-gray-700 text-sm font-medium rounded-full"
                      >
                        #{category.name}
                      </span>
                    ))}
                  </div>
                </div>
              )}
              <form className="mt-10" onSubmit={handleSubmit}>
                <div className="mt-10">
                  <div className="flex items-center justify-between">
                    <h3 className="text-sm font-medium text-gray-900">
                      Chọn màu phù hợp
                    </h3>
                  </div>
                  <RadioGroup
                    value={selectedColor}
                    onChange={setSelectedColor}
                    className="mt-4"
                  >
                    <RadioGroup.Label className="sr-only">
                      Chọn màu phù hợp
                    </RadioGroup.Label>
                    <div className="grid grid-cols-2 gap-4 sm:grid-cols-4 lg:grid-cols-5">
                      {laptop?.laptopColors.map((color) => (
                        <RadioGroup.Option
                          key={color.colorId}
                          value={color}
                          disabled={color.quantity < 1}
                          className={({ active, checked }) =>
                            classNames(
                              "m-2",
                              color.quantity > 0
                                ? "cursor-pointer bg-white text-black shadow-sm"
                                : "cursor-not-allowed bg-gray-50 text-gray-200",
                              active ? "ring-1 ring-indigo-500" : "",
                              checked
                                ? "border-2 border-indigo-500"
                                : "border-transparent",
                              "w-20 h-6 group relative flex items-center justify-center rounded-md border py-1 px-1 text-sm font-medium uppercase hover:bg-gray-50 focus:outline-none sm:flex-1 sm:py-6"
                            )
                          }
                        >
                          {({ active, checked }) => (
                            <>
                              <RadioGroup.Label as="span">
                                {color?.colorName}
                              </RadioGroup.Label>
                              {color.quantity > 0 && checked && (
                                <span
                                  aria-hidden="true"
                                  className="pointer-events-none absolute -inset-px rounded-md border-2 border-indigo-500"
                                />
                              )}
                            </>
                          )}
                        </RadioGroup.Option>
                      ))}
                    </div>
                  </RadioGroup>
                </div>
                <div className="mt-4 flex items-center space-x-2">
                  <IconButton
                    onClick={() => handleQuantityChange(-1)}
                    disabled={quantity <= 1}
                    color="primary"
                    aria-label="decrease quantity"
                  >
                    <RemoveCircleOutlineIcon />
                  </IconButton>

                  <span className="py-1 px-7 border rounded-sm">
                    {quantity + "/" + selectedColor?.quantity}
                  </span>

                  <IconButton
                    onClick={() => handleQuantityChange(1)}
                    color="primary"
                    aria-label="increase quantity"
                  >
                    <AddCircleOutlineIcon />
                  </IconButton>
                </div>
                <Button
                  variant="contained"
                  type="submit"
                  sx={{ padding: ".8rem 2rem", marginTop: "2rem" }}
                >
                  Thêm vào giỏ hàng
                </Button>
              </form>
            </div>
          </div>
        </section>

        <section>
          {/* New Container for Technical Specifications */}
          <div className="mt-10 border rounded-md p-4">
            <h3 className="text-lg font-medium text-gray-900">
              Thông số kỹ thuật chi tiết
            </h3>
            <div className="mt-4 flex flex-col gap-0">
              {/* CPU Details */}
              {laptop?.cpu && (
                <div className="p-2">
                  <h4 className="text-sm font-bold text-black">• CPU</h4>
                  <p className="text-gray-900">
                    {[
                      laptop.cpu.brandName,
                      laptop.cpu.technologyName,
                      laptop.cpu.model,
                    ]
                      .filter((value) => value)
                      .join(" ")}
                  </p>
                  {[
                    laptop.cpu.speed && `Tốc độ: ${laptop.cpu.speed} GHz`,
                    laptop.cpu.maxSpeed && `- ${laptop.cpu.maxSpeed} GHz`,
                  ]
                    .filter((value) => value)
                    .join(" ")}
                  <p className="text-gray-600">
                    {[
                      laptop.cpu.core && `Số nhân: ${laptop.cpu.core}`,
                      laptop.cpu.thread && `Số luồng: ${laptop.cpu.thread}`,
                      laptop.cpu.cache && `Số luồng: ${laptop.cpu.cache}`,
                    ]
                      .filter((value) => value)
                      .join(", ")}
                  </p>
                </div>
              )}
              {/* GPU Details */}
              {laptop?.gpus?.length > 0 && (
                <div className="p-2">
                  <h4 className="text-sm font-bold text-black">• GPU</h4>
                  {laptop.gpus.map((gpu, index) => {
                    if (
                      gpu.brandName === "Unknown" ||
                      gpu.model === "Unknown"
                    ) {
                      return null;
                    }
                    return (
                      <div key={index}>
                        <p className="text-gray-900">
                          {[
                            gpu.brandName,
                            gpu.model,
                            gpu.type === "INTEGRATED"
                              ? "(Card on board)"
                              : gpu.type === "DISCRETE"
                                ? "(Card rời)"
                                : null,
                          ]
                            .filter((value) => value)
                            .join(" ")}
                        </p>
                        {gpu.memory && gpu.memory !== "Unknown" && (
                          <p className="text-gray-600">Bộ nhớ: {gpu.memory}</p>
                        )}
                        {gpu.tops && gpu.tops !== "Unknown" && (
                          <p className="text-gray-600">
                            Hiệu suất tính toán (TOPS - Tera Operations Per
                            Second): {gpu.tops}
                          </p>
                        )}
                      </div>
                    );
                  })}
                </div>
              )}
              {/* RAM Details */}
              {laptop?.ramMemory && (
                <div className="p-2">
                  <h4 className="text-sm font-bold text-black">• RAM</h4>
                  <p className="text-gray-900">{`${laptop.ramMemory} GB${laptop.ramDetail ? ` ${laptop.ramDetail}` : ""
                    }`}</p>
                </div>
              )}
              {/* Disk Details */}
              {laptop?.diskCapacity && (
                <div className="p-2">
                  <h4 className="text-sm font-bold text-black">
                    • Ổ cứng
                  </h4>
                  <p className="text-gray-900">{`${laptop.diskCapacity} GB${laptop.diskDetail ? ` ${laptop.diskDetail}` : ""
                    }`}</p>
                </div>
              )}
              {/* Screen Details */}
              {laptop?.screenSize && (
                <div className="p-2">
                  <h4 className="text-sm font-bold text-black">
                    • Màn hình
                  </h4>
                  <p className="text-gray-900">{`${laptop.screenSize} inch${laptop.screenDetail ? ` ${laptop.screenDetail}` : ""
                    }`}</p>
                </div>
              )}
              {/* OS Details */}
              {laptop?.osVersion && (
                <div className="p-2">
                  <h4 className="text-sm font-bold text-black">
                    • Hệ điều hành
                  </h4>
                  <p className="text-gray-900">{laptop.osVersion}</p>
                </div>
              )}
              {/* Battery Details */}
              {laptop?.batteryCharger &&
                laptop?.batteryCharger !== "Unknown" && (
                  <div className="p-2">
                    <h4 className="text-sm font-bold text-black">
                      • Thông tin pin & sạc
                    </h4>
                    <p className="text-gray-900">{laptop.batteryCharger}</p>
                  </div>
                )}
              {/* Design Details */}
              {laptop?.design && (
                <div className="p-2">
                  <h4 className="text-sm font-bold text-black">
                    • Thiết kế
                  </h4>
                  <p className="text-gray-900">{laptop.design}</p>
                </div>
              )}

            </div>
          </div>
        </section>

        <section className="mt-10">
          <h1 className="font-semibold text-lg pb-4">Bình luận</h1>
          <div className="flex flex-col mb-10 max-w-full">
            <TextField
              className="mb-4"
              value={newReview.des}
              onChange={(e) => {
                setNewReview((pre) => ({ ...pre, des: e.target.value }));
              }}
              placeholder="Thêm nhận xét của bạn"
              multiline
              rows={3} // Set to 3 lines
            />
            <Rating
              name="star-rating"
              value={newReview.review}
              onChange={(event, v) => {
                setNewReview((pre) => ({ ...pre, review: v }));
              }}
            />
            <button
              className="px-4 py-1 max-w-[80px] cursor-pointer bg-blue-400 rounded-lg text-white"
              onClick={handleSubmitReview}
            >
              Gửi
            </button>
          </div>

          <div className="border p-5 rounded-md mt-3">
            <Grid container spacing={7}>
              <Grid item xs={7}>
                <div className="space-y-5">
                  {reviewStore?.reviews && reviewStore.reviews.length > 0 ? (
                    reviewStore?.reviews.map((item, i) => (
                      <div>
                        <LaptopReviewCard key={i} item={item} />
                      </div>
                    ))
                  ) : (
                    <p className="text-gray-500">
                      Không có đánh giá nào cho sản phẩm này
                    </p>
                  )}
                </div>
              </Grid>
            </Grid>
          </div>
        </section>
      </div>
    </div>
  );
}
