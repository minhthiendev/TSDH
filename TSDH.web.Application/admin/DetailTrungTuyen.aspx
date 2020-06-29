<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="DetailTrungTuyen.aspx.cs" Inherits="TSDH.web.Application.admin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      <div class="row" style="height: 90vh;">
        <div class="col-md-2 xx border ">
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link " href="/admin/dashboard">Dashboard</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="/admin/HocBa">Học Bạ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/admin/THPTQG">THPT Quốc Gia</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/TrungTuyen">Trúng tuyển</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/contacts">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/Users">Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/nganh">Ngành tuyển sinh</a>
                </li>
            </ul>
        </div>
        <div class="col-md-10 grid-view" style="padding: 40px;">

            <div class="row d-flex justify-content-md-center ">
                <div class="col-md-12 text-center m-2">
                    <h3>Thông tin thí sinh</h3>
                </div>
                <asp:Label ID="Label2" runat="server" Text="Cmnd" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                <asp:Label ID="cmnd" runat="server" Text="xxxxxxxx" CssClass="form-control col-md-4 my-1 content"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Họ tên" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                <asp:Label ID="hoten" runat="server" Text="Họ Tên" CssClass="form-control col-md-4 my-1 content"></asp:Label>


                <asp:Label ID="Label4" runat="server" Text="Giới tính" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                <asp:Label ID="gioitinh" runat="server" Text="Nam" CssClass="form-control col-md-4 my-1 content"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="Ngày sinh" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                <asp:Label ID="ngaysinh" runat="server" Text="06/11/1999" CssClass="form-control col-md-4 my-1 content"></asp:Label>

                <asp:Label ID="Label1" runat="server" Text="Nơi sinh" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                <asp:Label ID="noisinh" runat="server" Text="Long An" CssClass="form-control col-md-4 my-1 content"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="Dân tộc" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                <asp:Label ID="dantoc" runat="server" Text="Kinh" CssClass="form-control col-md-4 my-1 content"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="Hộ Khẩu thường chú" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                <asp:Label ID="hokhau" runat="server" Text="Long An" CssClass="form-control col-md-4 my-1 content"></asp:Label>
                <asp:Label ID="Label8" runat="server" Text="Đối tượng ưu tiên" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                <asp:Label ID="dtut" runat="server" Text="KV2NT" CssClass="form-control col-md-4 my-1 content"></asp:Label>

                <asp:Label ID="Label9" runat="server" Text="Email" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                <asp:Label ID="email" runat="server" Text="minhthienpham0611@gmail.com" CssClass="form-control col-md-4 my-1 content"></asp:Label>
                <asp:Label ID="Label10" runat="server" Text="Điện thoại" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                <asp:Label ID="phone" runat="server" Text="0931260270" CssClass="form-control col-md-4 my-1 content"></asp:Label>
                




               
                <asp:Label ID="Label117" runat="server" Text="Ngành Trúng Tuyển" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                <asp:Label ID="nganh" runat="server" Text="Ngành Trúng Tuyển" CssClass="form-control col-md-4 my-1 content"></asp:Label>
                <asp:Label ID="Label120" runat="server" Text="Điểm trúng tuyển" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                <asp:Label ID="diem" runat="server" Text="30" CssClass="form-control col-md-4 my-1 content"></asp:Label>
                
                

            </div>
        </div>
    </div>
</asp:Content>
