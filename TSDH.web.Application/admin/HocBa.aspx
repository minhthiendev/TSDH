<%@ Page Title="Quản lí ts học bạ" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="HocBa.aspx.cs" Inherits="TSDH.web.Application.Con_lau_moi_tim_duoc_trang_admin_nay_nha.HocBa" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style="height: 90vh;">
        <div class="col-md-2 xx border ">
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link " href="/admin/dashboard">Dashboard</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" href="/admin/HocBa">Học Bạ</a>
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
                    <a class="nav-link" href="/admin/Users">Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/nganh">Ngành tuyển sinh</a>
                </li>
            </ul>
        </div>
        <div class="col-md-10 p-3 grid-view">
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="cmnd" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="100%" OnRowCommand="GridView2_RowCommand">
                <Columns>
                    <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/cancel.jpg" DeleteImageUrl="~/images/del_icon.png" EditImageUrl="~/images/edit_icon.png" SelectImageUrl="~/images/select.png" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateImageUrl="~/images/check.jpg">
                        <ControlStyle Width="30px" />
                    </asp:CommandField>
                   
                    <asp:ButtonField Text="view" CommandName="view"  ButtonType="Button" ControlStyle-CssClass="btn btn-outline-success"/>
                   
                    <asp:BoundField DataField="cmnd" HeaderText="cmnd" ReadOnly="True" SortExpression="cmnd"/>
                    <asp:BoundField DataField="hoten" HeaderText="hoten" SortExpression="hoten" />
                    <asp:BoundField DataField="ngaysinh" HeaderText="ngaysinh" SortExpression="ngaysinh" DataFormatString="{0:dd-MM-yyyy}" />
                    <asp:BoundField DataField="gioitinh" HeaderText="gioitinh" SortExpression="gioitinh" />
                    <asp:BoundField DataField="doituongUT" HeaderText="doituongUT" SortExpression="doituongUT" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="nv" HeaderText="nv" SortExpression="nv" />
                    <asp:BoundField DataField="tohop" HeaderText="tohop" SortExpression="tohop" />
                    <asp:BoundField DataField="diem" HeaderText="diem" SortExpression="diem" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TSDHConnectionString %>" DeleteCommand="DELETE FROM [TSbyHOCBA] WHERE [cmnd] = @original_cmnd AND [hoten] = @original_hoten AND [ngaysinh] = @original_ngaysinh AND [gioitinh] = @original_gioitinh AND [phone] = @original_phone AND [doituongUT] = @original_doituongUT AND [email] = @original_email AND [nv] = @original_nv AND [tohop] = @original_tohop AND [diem] = @original_diem" InsertCommand="INSERT INTO [TSbyHOCBA] ([cmnd], [hoten], [ngaysinh], [gioitinh], [phone], [doituongUT], [email], [nv], [tohop], [diem]) VALUES (@cmnd, @hoten, @ngaysinh, @gioitinh, @phone, @doituongUT, @email, @nv, @tohop, @diem)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [cmnd], [hoten], [ngaysinh], [gioitinh], [phone], [doituongUT], [email], [nv], [tohop], [diem] FROM [TSbyHOCBA]" UpdateCommand="UPDATE [TSbyHOCBA] SET [hoten] = @hoten, [ngaysinh] = @ngaysinh, [gioitinh] = @gioitinh, [phone] = @phone, [doituongUT] = @doituongUT, [email] = @email, [nv] = @nv, [tohop] = @tohop, [diem] = @diem WHERE [cmnd] = @original_cmnd AND [hoten] = @original_hoten AND [ngaysinh] = @original_ngaysinh AND [gioitinh] = @original_gioitinh AND [phone] = @original_phone AND [doituongUT] = @original_doituongUT AND [email] = @original_email AND [nv] = @original_nv AND [tohop] = @original_tohop AND [diem] = @original_diem">
                <DeleteParameters>
                    <asp:Parameter Name="original_cmnd" Type="String" />
                    <asp:Parameter Name="original_hoten" Type="String" />
                    <asp:Parameter Name="original_ngaysinh" DbType="Date" />
                    <asp:Parameter Name="original_gioitinh" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_doituongUT" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_nv" Type="String" />
                    <asp:Parameter Name="original_tohop" Type="String" />
                    <asp:Parameter Name="original_diem" Type="Double" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="cmnd" Type="String" />
                    <asp:Parameter Name="hoten" Type="String" />
                    <asp:Parameter Name="ngaysinh" DbType="Date" />
                    <asp:Parameter Name="gioitinh" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="doituongUT" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="nv" Type="String" />
                    <asp:Parameter Name="tohop" Type="String" />
                    <asp:Parameter Name="diem" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="hoten" Type="String" />
                    <asp:Parameter Name="ngaysinh" DbType="Date" />
                    <asp:Parameter Name="gioitinh" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="doituongUT" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="nv" Type="String" />
                    <asp:Parameter Name="tohop" Type="String" />
                    <asp:Parameter Name="diem" Type="Double" />
                    <asp:Parameter Name="original_cmnd" Type="String" />
                    <asp:Parameter Name="original_hoten" Type="String" />
                    <asp:Parameter Name="original_ngaysinh" DbType="Date" />
                    <asp:Parameter Name="original_gioitinh" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_doituongUT" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_nv" Type="String" />
                    <asp:Parameter Name="original_tohop" Type="String" />
                    <asp:Parameter Name="original_diem" Type="Double" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
