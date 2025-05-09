import {
    Grid,
    TextField,
    Button,
    Snackbar,
    Alert,
    MenuItem,
    Select,
    InputLabel,
    FormControl
} from "@mui/material";
import { useNavigate } from "react-router-dom";
import { useDispatch, useSelector } from "react-redux";
import { getUser, signup } from "../../Redux/Auth/Action";
import { useEffect, useState } from "react";

export default function SignupForm({ handleNext }) {
    const navigate = useNavigate();
    const dispatch = useDispatch();
    const [openSnackBar, setOpenSnackBar] = useState(false);
    const { auth } = useSelector((store) => store);
    const handleClose = () => setOpenSnackBar(false);
    const jwt = localStorage.getItem("jwt");

    useEffect(() => {
        if (jwt) {
            dispatch(getUser(jwt));
        }
    }, [dispatch, jwt]);

    useEffect(() => {
        if (auth.user || auth.error) setOpenSnackBar(true);
    }, [auth.user, auth.error]);

    const handleSubmit = (event) => {
        event.preventDefault();
        const data = new FormData(event.currentTarget);
        const userData = {
            name: data.get("name"),
            email: data.get("email"),
            password: data.get("password"),
            phoneNumber: data.get("phoneNumber"),
            gender: data.get("gender"),
            birthday: data.get("birthday"),
        };
        console.log("User data", userData);
        dispatch(signup(userData));
    };

    return (
        <div className="">
            <form onSubmit={handleSubmit}>
                <Grid container spacing={3}>
                    <Grid item xs={12}>
                        <TextField
                            required
                            id="name"
                            name="name"
                            label="Họ và tên"
                            fullWidth
                            autoComplete="given-name"
                        />
                    </Grid>

                    <Grid item xs={12}>
                        <TextField
                            required
                            id="email"
                            name="email"
                            label="Email"
                            fullWidth
                            autoComplete="email"
                        />
                    </Grid>

                    <Grid item xs={12}>
                        <TextField
                            required
                            id="password"
                            name="password"
                            label="Mật khẩu"
                            fullWidth
                            type="password"
                        />
                    </Grid>

                    <Grid item xs={12}>
                        <TextField
                            required
                            id="phoneNumber"
                            name="phoneNumber"
                            label="Số điện thoại"
                            fullWidth
                        />
                    </Grid>

                    <Grid item xs={12}>
                        <FormControl fullWidth>
                            <InputLabel id="gender-label">Giới tính</InputLabel>
                            <Select
                                labelId="gender-label"
                                id="gender"
                                name="gender"
                                label="Giới tính"
                                defaultValue="MALE"
                            >
                                <MenuItem value={"MALE"}>Nam</MenuItem>
                                <MenuItem value={"FEMALE"}>Nữ</MenuItem>
                            </Select>
                        </FormControl>
                    </Grid>

                    <Grid item xs={12}>
                        <TextField
                            id="birthday"
                            name="birthday"
                            label="Ngày sinh"
                            type="date"
                            fullWidth
                            InputLabelProps={{
                                shrink: true,
                            }}
                        />
                    </Grid>

                    <Grid item xs={12}>
                        <Button
                            className="bg-[#9155FD] w-full"
                            type="submit"
                            variant="contained"
                            size="large"
                            sx={{ padding: ".8rem 0" }}
                        >
                            Đăng ký
                        </Button>
                    </Grid>
                </Grid>
            </form>

            <div className="flex justify-center flex-col items-center">
                <div className="py-3 flex items-center ">
                    <p className="m-0 p-0">Bạn đã có tài khoản ?</p>
                    <Button onClick={() => navigate("/login")} className="ml-5" size="small">
                        Đăng nhập
                    </Button>
                </div>
            </div>

            <Snackbar open={openSnackBar} autoHideDuration={6000} onClose={handleClose}>
                <Alert onClose={handleClose} severity={auth.error ? "error" : "success"} sx={{ width: "100%" }}>
                    {auth.error ? auth.error : auth.user ? "Đăng ký thành công" : ""}
                </Alert>
            </Snackbar>
        </div>
    );
}
