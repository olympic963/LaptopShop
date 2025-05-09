import React from "react";
import { useNavigate } from "react-router-dom";

const HomeLaptopCard = ({ laptop }) => {
  const navigate = useNavigate();

  return (
    <div
      onClick={() => navigate(`/laptop/${laptop?.id || laptop?._id || 2}`)}
className="h-[20rem] cursor-pointer flex flex-col items-center bg-white rounded-lg border border-gray-300 overflow-hidden w-[15rem] mx-12"
    >
      <div className="h-[13rem] w-[10rem]">
        <img
          className="object-contain object-top w-full h-full"
          src={laptop?.imageUrl}
          alt={laptop?.model}
        />
      </div>
      <div className="p-4">
        <div className="flex items-center space-x-2">
          <p className="text-sm text-gray-500 line-through">
            {laptop?.originalPrice?.toLocaleString("vi-VN")} VND
          </p>
          <span className="text-gray-500 font-bold">
            -{laptop?.discountPercent?.toLocaleString("vi-VN")}%
          </span>
        </div>
        <p className="text-black-500 font-bold">
          {laptop?.discountedPrice?.toLocaleString("vi-VN")} VND
        </p>
        <h4 className="text-lg font-medium text-gray-900">{laptop?.model}</h4>
      </div>
    </div>
  );
};

export default HomeLaptopCard;
