<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TraCuu.aspx.cs" Inherits="TSDH.web.Application.TraCuu_TuVan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tra Cứu - Tư Vấn</title>
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

        .active {
            color: deeppink !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="container-fluid">
        <nav class=" row navbar navbar-expand-lg navbar-dark bg-dark sticky-top">

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
                        <a class="nav-link active" href="/TraCuu">Kết quả tuyển sinh</a>
                    </li>
                    <li class="nav-item mr-5">
                        <a class="nav-link " href="/LienHe">Liên hệ</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container py-5">
            <div class="row py-5">
                <div class="col-md-12 text-center">
                    <h4>Tra cứu kết quả
                    </h4>
                    <small>Nhập chính xác chứng minh nhân dân để tra cứu kết quả </small>
                </div>
                <div class="col-md-12 my-3">
                    <div class="col-md-12 text-center my-4 text-success">
                        <h6>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </h6>

                    </div>

                    <div class="d-flex justify-content-center ">
                        <div class="searchbar">
                            <input class="search_input" type="text" name="cmnd" placeholder="Nhập chứng minh thư..." style="background: unset!important;" />
                            <%--<button href="#" class="search_icon"><i class="fas fa-search" style="width: 3px"></i></button>--%>
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="search_input m-5" OnClick="Search">
                                <i class="fas fa-search"></i></asp:LinkButton>
                            <%--<asp:Button ID="Button1" runat="server" CssClass="search_icon" />--%>
                        </div>
                    </div>
                    <div class="col-md-12 my-5">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField HeaderText="cmnd" DataField="cmnd" ReadOnly="True" />
                                <asp:BoundField HeaderText="Họ tên" DataField="hoten" ReadOnly="True" />
                                <asp:BoundField HeaderText="ngày sinh" DataField="ngaysinh" ReadOnly="True" />
                                <asp:BoundField HeaderText="Giới tính" DataField="gioitinh" ReadOnly="True" />
                                <asp:BoundField HeaderText="Nơi Sinh" DataField="noisinh" ReadOnly="True" />
                                <asp:BoundField HeaderText="Dân tộc" DataField="dantoc" ReadOnly="True" />
                                <asp:BoundField HeaderText="Hộ Khẩu" DataField="hokhau" ReadOnly="True" />
                                <asp:BoundField HeaderText="Đối tượng ưu tiên" DataField="doituongUT" ReadOnly="True" />
                                <asp:BoundField HeaderText="email" DataField="email" ReadOnly="True" />
                                <asp:BoundField HeaderText="phone" DataField="phone" ReadOnly="True" />
                                <asp:BoundField HeaderText="Ngành" DataField="Nganh" ReadOnly="True" />
                                <asp:BoundField HeaderText="Điểm trúng tuyển" DataField="Diemtrungtuyen" ReadOnly="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
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

        <!-- Load Facebook SDK for JavaScript -->
        <div id="fb-root">
        </div>

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



    </form>

</body>
</html>
