import React, { useState } from "react";
import { Box, Typography } from "@mui/material";
import SearchIcon from "@mui/icons-material/Search";
import axios from "axios";

export default function SearchImage({ setValue }) {
  const [image, setImage] = useState(null);

  const handleImageChange = async (event) => {
    // event.target.value = null; // Reset input file để cho phép chọn lại cùng một file
    const file = event.target.files[0];
    if (file) {
      const reader = new FileReader();
      reader.onload = (e) => setImage(e.target.result); // Hiển thị ảnh preview
      reader.readAsDataURL(file);

      const formData = new FormData();
      formData.append("image", file);

      try {
        const res = await axios.post(
          "http://localhost:5000/data/search",
          formData,
          {
            headers: {
              "Content-Type": "multipart/form-data",
            },
          }
        );

        // Cập nhật dữ liệu trả về từ API
        if (res.data) {
          // search-image-update-res
          setValue(res.data);
        }

        console.log("image", res.data);
      } catch (error) {
        console.error("image", error);
      }
    }
  };

  return (
    <Box
      className="w-80 max-w-full aspect-video"
      sx={{
        border: "2px dashed #ccc",
        borderRadius: 4,
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        cursor: "pointer",
        position: "relative",
        overflow: "hidden",
        backgroundColor: "#f9f9f9",
      }}
      onClick={() => document.getElementById("image-upload-input").click()} // Đảm bảo click vào cả box để mở input
    >
      {!image ? (
        <Box
          sx={{
            textAlign: "center",
            color: "#888",
          }}
        >
          <SearchIcon sx={{ fontSize: 40, mb: 1 }} />
          <Typography>Nhấn để tìm kiếm</Typography>
        </Box>
      ) : (
        <Box
          component="img"
          src={image}
          alt="Uploaded"
          sx={{
            width: "100%",
            height: "100%",
            objectFit: "cover",
          }}
        />
      )}
      <input
        id="image-upload-input"
        type="file"
        accept="image/*"
        onChange={handleImageChange}
        style={{ display: "none" }}
      />
    </Box>
  );
}
