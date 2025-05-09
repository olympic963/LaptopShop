import { Fragment, useEffect, useState } from "react";
import { Dialog, Popover, Tab, Transition } from "@headlessui/react";
import {
    Bars3Icon,
    MagnifyingGlassIcon,
    ShoppingBagIcon,
    XMarkIcon,
    PhotoIcon
} from "@heroicons/react/24/outline";
import image_centered_icon from '../../image_centered_icon.png';
import { Link, useLocation, useNavigate } from "react-router-dom";
import { Avatar, Button, Menu, MenuItem, TextField } from "@mui/material";
import AuthModal from "../Auth/AuthModal";
import { useDispatch, useSelector } from "react-redux";
import { deepPurple } from "@mui/material/colors";
import { getUser, logout } from "../../Redux/Auth/Action";
import { getCart } from "../../Redux/Customers/Cart/Action";
import './index.css'
import SearchImage from "../SearchImage/SearchImage";

function classNames(...classes) {
    return classes.filter(Boolean).join(" ");
}

export default function Navigation() {
    const [open, setOpen] = useState(false);
    const navigate = useNavigate();
    const dispatch = useDispatch();
    const { auth, cart } = useSelector((store) => store);
    const [openAuthModal, setOpenAuthModal] = useState(false);
    const [anchorEl, setAnchorEl] = useState(null);
    const [isScrolled, setIsScrolled] = useState(false);
    const [inputValue, setInputValue] = useState("");
    const openUserMenu = Boolean(anchorEl);
    const jwt = localStorage.getItem("jwt");
    const location = useLocation();


    useEffect(() => {
        if (jwt) {
            dispatch(getUser(jwt));
            dispatch(getCart(jwt));
        }
    }, [jwt]);

    const handleUserClick = (event) => {
        setAnchorEl(event.currentTarget);
    };
    const handleCloseUserMenu = (event) => {
        setAnchorEl(null);
    };

    const handleOpen = () => {
        setOpenAuthModal(true);
    };
    const handleClose = () => {
        setOpenAuthModal(false);
    };

    const handleCategoryClick = (category, section, item, close) => {
        navigate(`/${category.id}/${section.id}/${item.id}`);
        close();
    };

    const handleKeyDown = (event) => {
        if (event.key === "Enter") {
            navigate(`/laptops/search?search=${inputValue}`);
        }
    };

    useEffect(() => {
        if (auth.user) {
            handleClose();
        }
        if (location.pathname === "/login" || location.pathname === "/signup") {
            navigate(-1);
        }
    }, [auth.user]);

    useEffect(() => {
        const handleScroll = () => {
            if (window.scrollY > 50) {
                setIsScrolled(true);
            } else {
                setIsScrolled(false);
            }
        };

        window.addEventListener('scroll', handleScroll);

        // Cleanup khi component unmount
        return () => {
            window.removeEventListener('scroll', handleScroll);
        };
    }, []);


    const handleLogout = () => {
        handleCloseUserMenu();
        dispatch(logout());
    };
    const handleMyOrderClick = () => {
        handleCloseUserMenu();
        navigate("/account/order");
    };

    const handleAdminClick = () => {
        handleCloseUserMenu();
        navigate("/admin")
    };

    return (
        <div className="bg-white pb-6">
            {/* Mobile menu */}
            <Transition.Root show={open} as={Fragment}>
                <Dialog as="div" className="relative z-40 lg:hidden" onClose={setOpen}>
                    <Transition.Child
                        as={Fragment}
                        enter="transition-opacity ease-linear duration-300"
                        enterFrom="opacity-0"
                        enterTo="opacity-100"
                        leave="transition-opacity ease-linear duration-300"
                        leaveFrom="opacity-100"
                        leaveTo="opacity-0"
                    >
                        <div className="fixed inset-0 bg-black bg-opacity-25" />
                    </Transition.Child>

                    <div className="fixed inset-0 z-40 flex">
                        <Transition.Child
                            as={Fragment}
                            enter="transition ease-in-out duration-300 transform"
                            enterFrom="-translate-x-full"
                            enterTo="translate-x-0"
                            leave="transition ease-in-out duration-300 transform"
                            leaveFrom="translate-x-0"
                            leaveTo="-translate-x-full"
                        >
                            <Dialog.Panel
                                className="relative flex w-full max-w-xs flex-col overflow-y-auto bg-white pb-12 shadow-xl">
                                <div className="flex px-4 pb-2 pt-5">
                                    <button
                                        type="button"
                                        className="-m-2 inline-flex items-center justify-center rounded-md p-2 text-gray-400"
                                        onClick={() => setOpen(false)}
                                    >
                                        <span className="sr-only">Close menu</span>
                                        <XMarkIcon className="h-6 w-6" aria-hidden="true" />
                                    </button>
                                </div>

                                {/* Links */}
                                <div className="space-y-6 border-t border-gray-200 px-4 py-6">
                                    <div className="flow-root">
                                        <a
                                            href="/public"
                                            className="-m-2 block p-2 font-medium text-gray-900"
                                        >
                                            Sign in
                                        </a>
                                    </div>
                                </div>

                                <div className="border-t border-gray-200 px-4 py-6">
                                    <a href="/public" className="-m-2 flex items-center p-2">
                                        <img
                                            src="https://tailwindui.com/img/flags/flag-canada.svg"
                                            alt=""
                                            className="block h-auto w-5 flex-shrink-0"
                                        />
                                        <span className="ml-3 block text-base font-medium text-gray-900">
                                            CAD
                                        </span>
                                        <span className="sr-only">, change currency</span>
                                    </a>
                                </div>
                            </Dialog.Panel>
                        </Transition.Child>
                    </div>
                </Dialog>
            </Transition.Root>

            <header className={`${isScrolled ? "fixed animation-slide-down w-full" : "relative"} z-50 bg-white`}>

                <nav aria-label="Top" className="mx-auto">
                    <div className="border-b border-gray-200">
                        <div className="flex h-16 items-center justify-between px-11">
                            <button
                                type="button"
                                className="rounded-md bg-white p-2 text-gray-400 lg:hidden"
                                onClick={() => setOpen(true)}
                            >
                                <span className="sr-only">Open menu</span>
                                <Bars3Icon className="h-6 w-6" aria-hidden="true" />
                            </button>

                            {/* Logo */}
                            <div className="ml-4 flex lg:ml-0">
                                <Link to="/">
                                    <span className="sr-only">Your Company</span>
                                    <img
                                        src={image_centered_icon}
                                        alt="Laptop Shop icon"
                                        className="h-8 w-8 mr-2"
                                    />
                                </Link>
                            </div>

                            <div className="relative">
                                <div className="flex items-center">
                                    <input
                                        type="text"
                                        className="w-[50vw] max-w-2xl bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg p-2.5"
                                        placeholder="Search"
                                        onChange={(e) => setInputValue(e.target.value)}
                                        onKeyDown={handleKeyDown}
                                    />
                                    <button
                                        onClick={() => navigate(`/laptops/search?search`)}
                                        className="ml-2 p-2 text-gray-400 hover:text-gray-600"
                                    >
                                        <PhotoIcon className="h-6 w-6" />
                                    </button>
                                </div>

                            </div>


                            <div className="flex items-center">
                                <div className="hidden lg:flex lg:flex-1 lg:items-center lg:justify-end lg:space-x-6">
                                    {auth?.user ? (
                                        <div>
                                            <Avatar
                                                className="text-white"
                                                onClick={handleUserClick}
                                                aria-controls={open ? "basic-menu" : undefined}
                                                aria-haspopup="true"
                                                aria-expanded={open ? "true" : undefined}
                                                // onClick={handleUserClick}
                                                sx={{
                                                    bgcolor: deepPurple[500],
                                                    color: "white",
                                                    cursor: "pointer",
                                                }}
                                            >
                                                {auth.user?.name[0].toUpperCase()}
                                            </Avatar>
                                            <Menu
                                                id="basic-menu"
                                                anchorEl={anchorEl}
                                                open={openUserMenu}
                                                onClose={handleCloseUserMenu}
                                                MenuListProps={{
                                                    "aria-labelledby": "basic-button",
                                                }}
                                            >{auth.user?.role === "ADMIN"&&
                                                <MenuItem onClick={handleAdminClick}>
                                                    Trang quản trị
                                                </MenuItem>}
                                                <MenuItem onClick={handleMyOrderClick}>
                                                    Quản lý đơn hàng
                                                </MenuItem>
                                                <MenuItem onClick={handleLogout}>Đăng xuất</MenuItem>
                                            </Menu>
                                        </div>
                                    ) : (
                                        <Button
                                            onClick={handleOpen}
                                            className="text-sm font-medium text-gray-700 hover:text-gray-800"
                                        >
                                            Đăng ký
                                        </Button>
                                    )}
                                </div>


                                {/* Cart */}
                                <div className="ml-4 flow-root lg:ml-6">
                                    <Button
                                        onClick={() => navigate("/cart")}
                                        className="group -m-2 flex items-center p-2"
                                    >
                                        <ShoppingBagIcon
                                            className="h-6 w-6 flex-shrink-0 text-gray-400 group-hover:text-gray-500"
                                            aria-hidden="true"
                                        />
                                        <span
                                            className="ml-2 text-sm font-medium text-gray-700 group-hover:text-gray-800">
                                            {cart.cart?.length || 0}
                                        </span>
                                        <span className="sr-only">items in cart, view bag</span>
                                    </Button>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </header>
            <AuthModal handleClose={handleClose} open={openAuthModal} />
        </div>
    );
}
