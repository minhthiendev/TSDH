<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lienhe.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Liên hệ</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/Site.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/fontawesome5.13.0/css/all.css" rel="stylesheet" type="text/css" />
    <style>
        nav a {
            color: #a6bff1 !important;
            padding: 0 20px !important;
            font-size: large;
            font-weight: bold;
        }
         .active{
           color:deeppink !important;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">

            <a class="navbar-brand" href="#">
                <img src="/images/logo.png" alt="" height="100" /></a>
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
                         <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/Dang-Ki-Theo-KQTHPTQG">Tuyến sinh theo KQ thi THPTQG</a>
                            <div class="dropdown-divider"></div>

                            <a class="dropdown-item" href="/Danh-Ki-Theo-Hoc-Ba">Tuyến sinh theo KQ thi Học Bạ</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="/TraCuu">Kết quả tuyển sinh</a>
                    </li>
                    <li class="nav-item mr-5">
                        <a class="nav-link active" href="/LienHe">Liên hệ</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="row">

                <div class="col-md-6 my-3 py-5">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1947214392317!2d106.66429465071829!3d10.796393392270229!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175292dd8bceffd%3A0xcb9d638e4019bd43!2zMjM2QiDEkC4gTMOqIFbEg24gU-G7uSwgUGjGsOG7nW5nIDEsIFTDom4gQsOsbmgsIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1590327055009!5m2!1svi!2s" width="500" height="300" style="border: 0;" aria-hidden="false" tabindex="0"></iframe>
                </div>
                <div class="col-md-6 my-3">
                    <div class="col-md-12 text-center">
                        <h4>Liên hệ</h4>
                        <small>Mọi chi tiết thắc mắc các em hãy liên lạc với nhà trường để được tư vấn hổ trợ </small>

                    </div>
                    <div class="well well-sm my-3">


                        <!-- Name input-->
                        <div class="form-group">
                            <div class="col-md-12">
                                <input id="name" name="name" type="text" placeholder="Your name" class="form-control" />
                            </div>
                        </div>

                        <!-- Email input-->
                        <div class="form-group">

                            <div class="col-md-12">
                                <input id="email" name="email" type="text" placeholder="Your email" class="form-control" />
                            </div>
                        </div>

                        <!-- Message body -->
                        <div class="form-group">

                            <div class="col-md-12">
                                <textarea class="form-control" id="message" name="message" placeholder="Please enter your message here..." rows="5"></textarea>
                            </div>
                        </div>

                        <!-- Form actions -->
                        <div class="form-group">
                            <div class="col-md-12 text-right">
                                <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- Load Facebook SDK for JavaScript -->
        <!--footer -->
        <div class="row py-5 bg-dark">
            <div class="container">

                <div class="row">
                    <div class="col-md-4 p-0">
                        <div class="col-md-12">
                            <h4 class="py-5"><a>
                                <img src="/images/logo.png" alt="" height="100" /></a></h4>
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