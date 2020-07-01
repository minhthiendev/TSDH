<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Danh-Ki-Theo-Hoc-Ba.aspx.cs" Inherits="TSDH.web.Application.Danh_Ki_Hoc_Ba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Xét Tuyển Học bạ</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
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
                <img src="/images/logo.png" alt="" height="90" /></a>
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
                        <a class="nav-link active" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Đăng kí  xét tuyển
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
        <div class="container">
            <div class="row d-flex justify-content-md-center py-5">
                <div class="col-md-12 text-center ">
                    <h3>Thông tin cá nhân</h3>
                </div>
                <input type="text" class="form-control col-md-5 col-md-4 m-3 " id="cmnd" name="cmnd" placeholder="Số CMND" required />
                <input type="text" class="form-control col-md-5 col-md-4 m-3 " name="hoten" placeholder="Họ tên" required />

                <div class="col-md-5 col-md-5 m-3 form-control">
                    Giới tính : &nbsp;&nbsp;
                <input class="" type="radio" name="gioitinh" id="nam" value="nam" checked required />
                    <label class="form-check-label" for="nam">
                        Nam
                    </label>
                    <input class="" type="radio" name="gioitinh" id="nu" value="nu" required />
                    <label class="form-check-label" for="nu">
                        Nữ
                    </label>
                </div>

                <div class="col-md-5 col-md-5 m-3 form-control">
                    <div class="row">
                        <div class="col-12">
                            <label class="col-md-3">Ngày Sinh </label>
                            <input type="date" name="ngaysinh" class="col-md-8 px-0 border-0" required />
                        </div>

                    </div>

                </div>
                <input type="text" class="form-control col-md-5 col-md-4 m-3 " name="noisinh" placeholder="Nơi sinh" title="" required />
                <input type="text" class="form-control col-md-5 col-md-4 m-3 " name="dantoc" placeholder="Dân tộc" title="" required />
                <input type="text" class="form-control col-md-5 col-md-4 m-3 " name="hokhau" placeholder="Hộ Khẩu thường Trú" />
                <input type="text" class="form-control col-md-5 col-md-4 m-3 " name="doituongUT" placeholder="Đối tượng Ưu tiên" required />

                <input type="email" class="form-control col-md-5 col-md-4 m-3 " name="email" placeholder="Email" required />
                <input type="text" class="form-control col-md-5 col-md-4 m-3 " name="phone" placeholder="Số điện thoại" required />
                <input type="text" class="form-control col-md-5 col-md-4 m-3 " name="namtotnghiep" placeholder="Năm tốt nghiệp" required />
                <div class="col-md-5 col-md-4 m-3 "></div>


                <div class="row px-5">

                    <label class="col-md-1 m-2 ">Lớp 10 </label>
                    <input type="text" class="form-control col-md-3 m-2" name="hk10" placeholder="Hạnh kiểm" required />
                    <input type="text" class="form-control col-md-7 m-2" name="truong10" placeholder="Tên trường" required />

                    <label class="col-md-1 m-2 ">Lớp 11  </label>
                    <input type="text" class="form-control col-md-3 m-2" name="hk11" placeholder="Hạnh kiểm" required />
                    <input type="text" class="form-control col-md-7 m-2" name="truong11" placeholder="Tên trường" required />

                    <label class="col-md-1 m-2 ">Lớp 12 </label>
                    <input type="text" class="form-control col-md-3 m-2" name="hk12" placeholder="Hạnh kiểm" required />
                    <input type="text" class="form-control col-md-7 m-2" name="truong12" placeholder="Tên trường" required />
                </div>
            </div>
            <div class="col-md-12 text-center ">
                <h3 class="py-5">Nguyện vọng
                </h3>
            </div>
            <div class="row d-flex justify-content-md-center">

                <input class="form-control col-md-4 mr-2" type="text" placeholder="Điền mã Ngành" name="nv" required />
                <div class=" col-md-2 ">
                    <!-- Button trigger modal -->
                    <a class="btn btn-outline-success" data-toggle="modal" data-target="#exampleModal">Xem Ngành
                    </a>

                </div>
                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Danh sách các ngành</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="manganh" DataSourceID="SqlDataSource1" Width="100%">
                                    <Columns>
                                        <asp:BoundField DataField="manganh" HeaderText="Mã Ngành" ReadOnly="True" SortExpression="manganh" />
                                        <asp:BoundField DataField="tennganh" HeaderText="Tên Ngành" SortExpression="tennganh" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TSDHConnectionString %>" SelectCommand="SELECT [manganh], [tennganh] FROM [NganhTuyenSinh]"></asp:SqlDataSource>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                            </div>
                        </div>
                    </div>
                </div>
                <select class="form-control col-md-3" onchange="subjectChanged(this)" name="tohop">
                    <option selected>Chọn tổ hợp môn</option>
                    <option value="A00">A00</option>
                    <option value="A01">A01</option>
                    <option value="B00">B00</option>
                    <option value="C00">C00</option>
                    <option value="D01">D01</option>
                </select>
            </div>
            <div class="row d-flex justify-content-md-center my-3">
                <label class="col-md-1 py-2">Lớp 10 </label>

                <label class="col-md-1 py-2 subject1">Môn 1 </label>
                <input type="text" class="form-control col-md-1 mr-2" placeholder="Học Kì 1" name="m1101" required />
                <input type="text" class="form-control col-md-1" placeholder="Học Kì 2" name="m1102" required />

                <label class="col-md-1 py-2 subject2">Môn 2 </label>
                <input type="text" class="form-control col-md-1 mr-2" placeholder="Học Kì 1" name="m2101" required />
                <input type="text" class="form-control col-md-1" placeholder="Học Kì 2" name="m2102" required />

                <label class="col-md-1 py-2 subject3">Môn 3</label>
                <input type="text" class="form-control col-md-1 mr-2" placeholder="Học Kì 1" name="m3101" required />
                <input type="text" class="form-control col-md-1" placeholder="Học Kì 2" name="m3102" required />

            </div>

            <div class="row d-flex justify-content-md-center my-3">

                <label class="col-md-1 py-2">Lớp 11  </label>

                <label class="col-md-1 py-2 subject1">Môn 1 </label>
                <input type="text" class="form-control col-md-1 mr-2" placeholder="Học Kì 1" name="m1111" required />
                <input type="text" class="form-control col-md-1" placeholder="Học Kì 2" name="m1112" required />

                <label class="col-md-1 py-2 subject2">Môn 2 </label>
                <input type="text" class="form-control col-md-1 mr-2" placeholder="Học Kì 1" name="m2111" required />
                <input type="text" class="form-control col-md-1" placeholder="Học Kì 2" name="m2112" required />

                <label class="col-md-1 py-2 subject3">Môn 3  </label>
                <input type="text" class="form-control col-md-1 mr-2" placeholder="Học Kì 1" name="m3111" required />
                <input type="text" class="form-control col-md-1" placeholder="Học Kì 2" name="m3112" required />

            </div>
            <div class="row d-flex justify-content-md-center my-3">
                <label class="col-md-1 py-2">Lớp 12 : </label>


                <label class="col-md-1 py-2 subject1">Môn 1  </label>
                <input type="text" class="form-control col-md-2 mr-2" placeholder="Học Kì 1" name="m1121" required />

                <label class="col-md-1 py-2 subject2">Môn 2  </label>
                <input type="text" class="form-control col-md-2 mr-2" placeholder="Học Kì 1" name="m2121" required />

                <label class="col-md-1 py-2 subject3">Môn 3</label>
                <input type="text" class="form-control col-md-2 mr-2" placeholder="Học Kì 1" name="m3121" required />

                <div class="form-control col-md-4 my-2 text-center border-0"></div>
                <input type="text" class="form-control col-md-4 my-2 text-center" placeholder="Tổng" disabled />
                <div class="form-control col-md-4 my-2 text-center border-0"></div>

            </div>
            <div class="row">
                <div class=" col-md-4">
                    <label>Ảnh học bạ Lớp 10</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="337px" />


                </div>
                <div class=" col-md-4">
                    <label>Ảnh học bạ Lớp 11</label>
                    <asp:FileUpload ID="FileUpload2" runat="server" Width="337px" />

                </div>
                <div class=" col-md-4">
                    <label>Ảnh học bạ Lớp 12</label>
                    <asp:FileUpload ID="FileUpload3" runat="server" Width="337px" />

                </div>
            </div>




            <div class="row d-flex justify-content-md-center py-5">
                <asp:Button ID="Button2" runat="server" Text="Đăng Kí" OnClick="Button2_Click" class="btn btn-outline-success col-md-2 " />
            </div>
        </div>
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
        <script type="text/javascript">

            function subjectChanged(obj) {
                const subject1 = document.getElementsByClassName('subject1');
                const subject2 = document.getElementsByClassName('subject2');
                const subject3 = document.getElementsByClassName('subject3');
                let value = obj.value;

                if (value === 'A00') {
                    subject1[0].innerHTML = "Toán";
                    subject1[1].innerHTML = "Toán";
                    subject1[2].innerHTML = "Toán";
                    subject2[0].innerHTML = "Lý";
                    subject2[1].innerHTML = "Lý";
                    subject2[2].innerHTML = "Lý";
                    subject3[0].innerHTML = "Hóa";
                    subject3[1].innerHTML = "Hóa";
                    subject3[2].innerHTML = "Hóa";

                }
                else if (value === 'A01') {
                    subject1[0].innerHTML = "Toán";
                    subject1[1].innerHTML = "Toán";
                    subject1[2].innerHTML = "Toán";
                    subject2[0].innerHTML = "Lý";
                    subject2[1].innerHTML = "Lý";
                    subject2[2].innerHTML = "Lý";
                    subject3[0].innerHTML = "Anh Văn";
                    subject3[1].innerHTML = "Anh Văn";
                    subject3[2].innerHTML = "Anh Văn";
                } else if (value === 'B00') {
                    subject1[0].innerHTML = "Toán";
                    subject1[1].innerHTML = "Toán";
                    subject1[2].innerHTML = "Toán";
                    subject2[0].innerHTML = "Hóa";
                    subject2[1].innerHTML = "Hóa";
                    subject2[2].innerHTML = "Hóa";
                    subject3[0].innerHTML = "Sinh";
                    subject3[1].innerHTML = "Sinh";
                    subject3[2].innerHTML = "Sinh";
                } else if (value === 'C00') {
                    subject1[0].innerHTML = "Ngữ văn";
                    subject1[1].innerHTML = "Ngữ văn";
                    subject1[2].innerHTML = "Ngữ Văn";
                    subject2[0].innerHTML = "Lịch Sử";
                    subject2[1].innerHTML = "Lịch Sử";
                    subject2[2].innerHTML = "Lịch Sử";
                    subject3[0].innerHTML = "Địa Lí";
                    subject3[1].innerHTML = "Địa Lí";
                    subject3[2].innerHTML = "Địa Lí";
                } else if (value === 'D01') {
                    subject1[0].innerHTML = "Toán";
                    subject1[1].innerHTML = "Toán";
                    subject1[2].innerHTML = "Toán";
                    subject2[0].innerHTML = "Ngữ Văn";
                    subject2[1].innerHTML = "Ngữ Văn";
                    subject2[2].innerHTML = "Ngữ Văn";
                    subject3[0].innerHTML = "Anh Văn";
                    subject3[1].innerHTML = "Anh Văn";
                    subject3[2].innerHTML = "AnhVăn";
                } else {
                    subject1[0].innerHTML = "Môn 1";
                    subject1[1].innerHTML = "Môn 1";
                    subject1[2].innerHTML = "Môn 1";
                    subject2[0].innerHTML = "Môn 2";
                    subject2[1].innerHTML = "Môn 2";
                    subject2[2].innerHTML = "Môn 2";
                    subject3[0].innerHTML = "Môn 3";
                    subject3[1].innerHTML = "Môn 3";
                    subject3[2].innerHTML = "Môn 3";
                }
            }

        </script>

    </form>
</body>
</html>
