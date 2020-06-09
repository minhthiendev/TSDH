<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dang-Ki-Theo-KQTHPTQG.aspx.cs" Inherits="TSDH.web.Application.page1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Xét tuyển THPTQG</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style>
        nav a {
            color: #a6bff1 !important;
            padding: 0 20px !important;
            font-size: large;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">

            <a class="navbar-brand" href="#">
                <img src="/images/logo.png" alt="" width="200" /></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>


            <div class="collapse navbar-collapse nav justify-content-end  " id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link " href="/">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="/ThongTinTuyerSinh">Thông Tin Tuyển Sinh</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Đăng kí  xét tuyển
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/Dang-Ki-Theo-KQTHPTQG">Tuyến sinh theo KQ thi THPTQG</a>
                            <div class="dropdown-divider"></div>

                            <a class="dropdown-item" href="/Danh-Ki-Theo-Hoc-Ba">Tuyến sinh theo KQ thi Học Bạ</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="/TraCuu">Kết quả tuyển sinh</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="/LienHe">Liên hệ</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="row d-flex justify-content-md-center py-5">
            <div class="col-md-12 text-center ">
                <h3 class="py-5">Thông tin cá nhân</h3>
            </div>
            <input type="text" class="form-control col-md-5 col-md-4 m-3 " placeholder="Số CMND" />
            <input type="text" class="form-control col-md-5 col-md-4 m-3 " placeholder="Họ tên" />

            <div class="col-md-5 col-md-5 m-3 form-control">
                Giới tính : &nbsp;&nbsp;
                <input class="" type="radio" name="gender" id="nam" value="option1" checked />
                <label class="form-check-label" for="nam">
                    Nam
                </label>
                <input class="" type="radio" name="gender" id="nu" value="option1" />
                <label class="form-check-label" for="nu">
                    Nữ
                </label>
            </div>

            <div class="col-md-5 col-md-5 m-3 form-control">
                <div class="row">
                    <div class="col-12">
                        <label class="col-md-3">Ngày Sinh : </label>
                        <input type="date" class="col-md-8 px-0 border-0" />
                    </div>

                </div>

            </div>
            <input type="text" class="form-control col-md-5 col-md-4 m-3 " placeholder="Nơi sinh" title="" />
            <input type="text" class="form-control col-md-5 col-md-4 m-3 " placeholder="Dân tộc" title="" />
            <input type="text" class="form-control col-md-5 col-md-4 m-3 " placeholder="Hộ Khẩu thường Trú" />
            <input type="text" class="form-control col-md-5 col-md-4 m-3 " placeholder="Đối tượng Ưu tiên" />

            <input type="text" class="form-control col-md-5 col-md-4 m-3 " placeholder="Email" />
            <input type="text" class="form-control col-md-5 col-md-4 m-3 " placeholder="Số điện thoại" />



            <label class="col-md-2  m-2 ">Lớp 10 : </label>
            <input type="text" class="form-control col-md-6 col-md-8 m-2" placeholder="Tên trường" />

            <label class="col-md-2 m-2 ">Lớp 11 : </label>
            <input type="text" class="form-control col-md-6 col-md-8 m-2" placeholder="Tên trường" />

            <label class="col-md-2 m-2 ">Lớp 12 : </label>
            <input type="text" class="form-control col-md-6 col-md-8 m-2" placeholder="Tên trường" />
        </div>
        <div class="col-md-12 text-center ">
            <h3 class="py-5">Nguyện vọng</h3>
        </div>

        <div class="row d-flex justify-content-md-center my-3">

            <label class="col-md-2 text-center py-2">Nguyện vọng 1 : </label>
            <input type="text" class="form-control col-md-5 col-md-4 mr-2" placeholder="Chọn ngành" />
            <input type="text" class="form-control col-md-3 " placeholder="Chọn tổ hợp môn xét tuyển" />
            <input type="text" class="form-control col-md-3 m-3 " placeholder="Điểm Môn 1" />
            <input type="text" class="form-control col-md-3 m-3" placeholder="Điểm Môn 2" />
            <input type="text" class="form-control col-md-3 m-3 " placeholder="Điểm Môn 3" />

        </div>
        <div class="row d-flex justify-content-md-center my-3">
            <label class="col-md-2 py-2 text-center">Nguyện vọng 2 : </label>
            <input type="text" class="form-control col-md-5 col-md-4 mr-2" placeholder="Chọn ngành" />
            <input type="text" class="form-control col-md-3" placeholder="Chọn tổ hợp môn xét tuyển" />
            <input type="text" class="form-control col-md-3 m-3 " placeholder="Điểm Môn 1" />
            <input type="text" class="form-control col-md-3 m-3" placeholder="Điểm Môn 2" />
            <input type="text" class="form-control col-md-3 m-3 " placeholder="Điểm Môn 3" />

        </div>


        <div class="row d-flex justify-content-md-center py-5">
            <button class="btn btn-outline-success col-md-2 " type="submit">Đăng kí</button>
        </div>
        <!--footer -->
        <div class="row py-5 bg-dark">
            <div class="container">

                <div class="row">
                    <div class="col-md-4 p-0">
                        <div class="col-md-12">
                            <h4 class="py-5"><a>
                                <img src="/images/logo.png" alt="" width="200" /></a></h4>
                        </div>
                        <div class="col-md-12 text-light">
                            Địa chỉ:236B Lê Văn Sỹ, P. 1, Q. Tân Bình, TP. Hồ Chí Minh
                        </div>
                        <div class="col-md-12 text-light">
                            Điện thoại:08.38443006
                        </div>
                        <div class="col-md-12 text-light">
                            Fax: 08.38449474
                        </div>

                    </div>
                    <div class="col-md-4 p-0">
                        <div class="col-md-12 text-center text-light">
                            <h4 class="py-5">LIÊN KẾT HỮU ÍCH</h4>
                        </div>
                        <div class="col-md-12 text-light">
                            Địa chỉ:236B Lê Văn Sỹ, P. 1, Q. Tân Bình, TP. Hồ Chí Minh
                        </div>
                        <div class="col-md-12 text-light">
                            Điện thoại:08.38443006
                        </div>
                        <div class="col-md-12 text-light">
                            Fax: 08.38449474
                        </div>

                    </div>
                    <div class="col-md-4 p-0">
                        <div class="col-md-12 text-center text-light">
                            <h4 class="py-5">KẾT NỐI VỚI CHÚNG TÔI</h4>
                        </div>
                        <div>
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1947214392317!2d106.66429465071829!3d10.796393392270229!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175292dd8bceffd%3A0xcb9d638e4019bd43!2zMjM2QiDEkC4gTMOqIFbEg24gU-G7uSwgUGjGsOG7nW5nIDEsIFTDom4gQsOsbmgsIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1590327055009!5m2!1svi!2s" width="100%" height="" style="border: 0;" aria-hidden="false" tabindex="0"></iframe>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="row">

            <div class="col-md-12 text-center">
                <h5 class="py-3">Copyright 2020 © Trường ĐH Tài nguyên và Môi trường Tp. HCM</h5>
            </div>


        </div>
        <!--end footer -->
    </form>
    <!-- Load Facebook SDK for JavaScript -->
    <div id="fb-root"></div>
    <script>
        window.fbAsyncInit = function () {
            FB.init({
                xfbml: true,
                version: 'v7.0'
            });
        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>

    <!-- Your Chat Plugin code -->
    <div class="fb-customerchat"
        attribution="setup_tool"
        page_id="106532931079209"
        theme_color="#13cf13">
    </div>
    <script src="/Scripts/jquery-3.5.1.slim.min.js" type="text/javascript"></script>
    <script src="/Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="/Scripts/popper.min.js" type="text/javascript"></script>
</body>
</html>
