<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="TSDH.web.Application.admin.WebForm9" %>

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
                    <a class="nav-link" href="/admin/HocBa">Học Bạ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/THPTQG">THPT Quốc Gia</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/TrungTuyen">Trúng tuyển</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/contacts">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/admin/Users">Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/nganh">Ngành tuyển sinh</a>
                </li>
            </ul>
        </div>
        <div class="col-md-10 grid-view">
            <div class="container">
                <div class="col-md-12 m-5">
                    <h3 class="text-center">Thông tin cá nhân</h3>
                </div>
                <div class="row d-flex justify-content-md-center py-5">
                    <asp:Label ID="Label2" runat="server" Text="Username" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                    <asp:Label ID="username" runat="server" Text="xxxxxxxx" CssClass="form-control col-md-4 my-1 content"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Email" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                    <asp:Label ID="email" runat="server" Text="" CssClass="form-control col-md-4 my-1 content"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="Password" CssClass="form-control col-md-2 my-1 title"></asp:Label>
                    <asp:Label ID="password" runat="server" Text="" CssClass="form-control col-md-4 my-1 content"></asp:Label>
                </div>

                <div class="col-md-12">
                    <h3 class="text-center">
                       <a class="btn btn-outline-success" href="/admin/changepassword"><i class="fas fa-key"></i>Change password</a>
                    </h3>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
