<%@ Page Title="Thông tin tuyển sinh" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="TrungTuyen.aspx.cs" Inherits="TSDH.web.Application.admin.WebForm1" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

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
                    <a class="nav-link active" href="/admin/TrungTuyen">Trúng tuyển</a>
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
        <div class="col-md-10 p-3 grid-view">

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="100%" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/select.png" ShowSelectButton="True">
                    <ControlStyle Width="30px" />
                    </asp:CommandField>
                      <asp:ButtonField Text="view" CommandName="view"  ButtonType="Button" ControlStyle-CssClass="btn btn-outline-success"/>
                    <asp:BoundField DataField="cmnd" HeaderText="cmnd" SortExpression="cmnd" />
                    <asp:BoundField DataField="hoten" HeaderText="hoten" SortExpression="hoten" />
                    <asp:BoundField DataField="ngaysinh" HeaderText="ngaysinh" SortExpression="ngaysinh" DataFormatString="{0:dd-MM-yyyy}" />
                    <asp:BoundField DataField="gioitinh" HeaderText="gioitinh" SortExpression="gioitinh" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="Nganh" HeaderText="Nganh" SortExpression="Nganh" />
                    <asp:BoundField DataField="Diemtrungtuyen" HeaderText="Diemtrungtuyen" SortExpression="Diemtrungtuyen" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TSDHConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [cmnd], [hoten], [ngaysinh], [gioitinh], [email], [phone], [Nganh], [Diemtrungtuyen] FROM [TrungTuyen]">
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

