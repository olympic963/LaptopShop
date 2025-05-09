import React from "react";
import { Route, Routes, useLocation } from "react-router-dom";
import { ThemeProvider } from '@mui/material/styles';
import { customerTheme } from "../Admin/Theme/CustomTheme";
import Navigation from "../Customer/Navbar/Navigation";
import Footer from "../Customer/Footer/Footer";
import LaptopDetails from "../Customer/Laptop/LaptopDetails/LaptopDetails";
import Laptop from "../Customer/Laptop/Laptop/Laptop";
import Contact from "../Pages/Contact";
import TermsCondition from "../Pages/TermsCondition";
import PrivacyPolicy from "../Pages/PrivacyPolicy";
import About from "../Pages/About";
import Homepage from "../Pages/Homepage";
import Cart from "../Customer/Cart/Cart";
import Order from "../Customer/Orders/Order";
import OrderDetails from "../Customer/Orders/OrderDetails";
import Checkout from "../Customer/Checkout/Checkout";
import PaymentStatus from "../Customer/PaymentStatus/PaymentStatus";
import RateLaptop from "../Customer/ReviewLaptop/RateLaptop";
import SearchLaptop from "../Customer/Laptop/Laptop/SearchLaptop";
import NotFound from "../Pages/NotFound"
const CustomerRoutes = () => {
    const location = useLocation();

    const excludedRoutes = ["/login", "/signup"];
    //const showNavigation = !excludedRoutes.includes(location.pathname);
    // const showFooter = !excludedRoutes.includes(location.pathname);
    const showNavigation = true;
    const showFooter = true;

    const routes = [
        { path: "/login", element: <Homepage /> },
        { path: "/signup", element: <Homepage /> },
        { path: "/", element: <Homepage /> },
        { path: "/laptops/search", element: <SearchLaptop /> },
        { path: "/home", element: <Homepage /> },
        { path: "/about", element: <About /> },
        { path: "/privacy-policy", element: <PrivacyPolicy /> },
        { path: "/terms-condition", element: <TermsCondition /> },
        { path: "/contact", element: <Contact /> },
        //{ path: "/", element: <Laptop /> },
        { path: "/laptop/:laptopId", element: <LaptopDetails /> },
        { path: "/cart", element: <Cart /> },
        { path: "/account/order", element: <Order /> },
        { path: "/account/order/:orderId", element: <OrderDetails /> },
        { path: "/account/rate/:laptopId", element: <RateLaptop /> },
        { path: "/checkout", element: <Checkout /> },
        // { path: "/payment/:orderId", element: <PaymentSuccess /> },
        { path: "/payment/status", element: <PaymentStatus /> },
        { path: "/*", element: <NotFound /> }
    ];

    return (
        <div style={{display: "flex", flexDirection: "column", minHeight: "100vh"}}>
            <ThemeProvider theme={customerTheme}>
                {showNavigation && <Navigation/>}
                <div className="min-h-screen" style={{flex: 1}}> {/* Chiếm khoảng trống ở giữa */}
                    <Routes>
                        {routes.map(({path, element}, index) => (
                            <Route key={index} path={path} element={element}/>
                        ))}
                    </Routes>
                </div>
                {showFooter && <Footer/>}
            </ThemeProvider>
        </div>
    );
};

export default CustomerRoutes;
