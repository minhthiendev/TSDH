<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TSDH.web.Application.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Index</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <style>
        .container-fluid{
            width:100%!important;
        }
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
    <form runat="server" id="homepage" class="container-fluid" >
        <!--nav -->
        <nav class=" row navbar navbar-expand-lg navbar-dark bg-dark sticky-top ">

            <a class="navbar-brand" href="#">
                <img src="/images/logo.png" alt="" height="100" /></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>


            <div class="collapse navbar-collapse nav justify-content-end  " id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="/">Trang chủ</a>
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
                        <a class="nav-link " href="/LienHe">Liên hệ</a>
                    </li>
                  
                </ul>
            </div>
        </nav>

        <!--end nav -->
        <!--carousel -->
        <div id="carouselExampleIndicators" class="carousel slide row" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="" src="./images/Baner_TuyenSinh_2020.png" alt="First slide" style="object-fit: contain; width: 100%; object-position: center; height: 80vh;" />
                </div>
                <div class="carousel-item">
                    <img class="" src="./images/truong.jpg" alt="First slide" style="object-fit: contain; width: 100%;" />
                </div>
                <div class="carousel-item">
                    <img class="" src="./images/Baner_TuyenSinh_2020.png" alt="First slide" style="object-fit: contain; width: 100%; object-position: center; height: 80vh;" />
                </div>


            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!--end carousel -->
        <!--new -->
        <div class="row py-5">
            <div class="container">
                <div class="col-md-12 text-center">
                    <h1 class="py-5">Tin Tức</h1>
                </div>
                <div class="row">
                    <div class="card col-md-4 p-0" style="">
                        <img src="https://picsum.photos/200/250" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                    <div class="card col-md-4 p-0" style="">
                        <img src="https://picsum.photos/200/250" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                    <div class="card col-md-4 p-0" style="">
                        <img src="https://picsum.photos/200/250" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!--end new -->

        <!--event -->
        <div class="row py-5">
            <div class="container">
                <div class="col-md-12 text-center">
                    <h1 class="py-5">Sự kiện</h1>
                </div>
                <div class="row">
                    <div class="card col-md-4 p-0">
                        <img src="https://picsum.photos/200/250" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                    <div class="card col-md-4 p-0">
                        <img src="https://picsum.photos/200/250" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                    <div class="col-md-4 p-0">
                        <div class="col-md-12 row" style="height: 20%">
                            <div class="col-md-4">
                                <img src="https://picsum.photos/200/250" alt="Alternate Text" width="100%"/>
                            </div>
                            <div class="col-md-8">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
                        </div>
                        <div class="col-md-12 row" style="height: 20%">
                            <div class="col-md-4">
                                <img src="https://picsum.photos/200/250" alt="Alternate Text" width="100%"/>
                            </div>
                            <div class="col-md-8">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
                        </div>
                        <div class="col-md-12 row" style="height: 20%">
                            <div class="col-md-4">
                                <img src="https://picsum.photos/200/250" alt="Alternate Text" width="100%"/>
                            </div>
                            <div class="col-md-8">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
                        </div>
                        <div class="col-md-12 row" style="height: 20%">
                            <div class="col-md-4">
                                <img src="https://picsum.photos/200/250" alt="Alternate Text" width="100%"/>
                            </div>
                            <div class="col-md-8">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
                        </div> 
                        <div class="col-md-12 row" style="height: 20%">
                            <div class="col-md-4">
                                <img src="https://picsum.photos/200/250" alt="Alternate Text" width="100%"/>
                            </div>
                            <div class="col-md-8">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
                        </div>
                        
 
                    </div>
                </div>
            </div>

        </div>
        <!--end event -->
        <!--end new -->

        <!--footer -->
        <div class="row py-5 bg-dark">
            <div class="container">

                <div class="row">
                    <div class="col-md-4 p-0">
                        <div class="col-md-12">
                            <h3 class="py-5"><a> <img src="/images/logo.png" alt="" width="200" /></a></h3>
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
                            <h3 class="py-5">LIÊN KẾT HỮU ÍCH</h3>
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
                            <h3 class="py-5">KẾT NỐI VỚI CHÚNG TÔI</h3>
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

         <!-- Load Facebook SDK for JavaScript -->
      <div id="fb-root"></div>
      <script>
        window.fbAsyncInit = function() {
          FB.init({
            xfbml            : true,
            version          : 'v7.0'
          });
        };

        (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));</script>

      <!-- Your Chat Plugin code -->
      <div class="fb-customerchat"
        attribution=setup_tool
        page_id="106532931079209"
  theme_color="#13cf13">
      </div>
    </form>
    <script src="/Scripts/jquery-3.5.1.slim.min.js" type="text/javascript"></script>
    <script src="/Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="/Scripts/popper.min.js" type="text/javascript"></script>
</body>
</html>
