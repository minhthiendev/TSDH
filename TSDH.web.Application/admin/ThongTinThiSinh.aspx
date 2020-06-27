<%@ Page Title="Thông tin tuyển sinh" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="ThongTinThiSinh.aspx.cs" Inherits="TSDH.web.Application.admin.WebForm1" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row" style="height: 90vh;">
        <div class="col-md-2 bg-dark ">
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link " href="/admin/dashboard">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/admin/ThongTinThiSinh">Hồ sơ thí sinh</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/HocBa">Học Bạ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/THPTQG">THPT Quốc Gia</a>
                </li>
            </ul>
        </div>
        <div class="col-md-10 p-3 grid-view">

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="cmnd" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="1393px" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:CommandField ButtonType="Image" CancelImageUrl="../images/cancel.jpg" DeleteImageUrl="../images/del_icon.png" EditImageUrl="../images/edit_icon.png" SelectImageUrl="../images/select.png" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" ShowSelectButton="True" UpdateImageUrl="../images/check.jpg">
                        <ControlStyle Width="30px" />
                    </asp:CommandField>
                    <asp:BoundField DataField="cmnd" HeaderText="Cmnd" ReadOnly="True" SortExpression="cmnd" />
                    <asp:BoundField DataField="hoten" HeaderText="Họ Tên" SortExpression="hoten" />
                    <asp:BoundField DataField="ngaysinh" HeaderText="Ngày Sinh" SortExpression="ngaysinh" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="gioitinh" HeaderText="Giới Tính" SortExpression="gioitinh" />
                    <asp:BoundField DataField="noisinh" HeaderText="Nơi Sinh" SortExpression="noisinh" />
                    <asp:BoundField DataField="dantoc" HeaderText="Dân tộc" SortExpression="dantoc" />
                    <asp:BoundField DataField="hokhau" HeaderText="Hộ Khẩu" SortExpression="hokhau" />
                    <asp:BoundField DataField="doituongUT" HeaderText="Đối Tượng UT" SortExpression="doituongUT" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                    <asp:BoundField DataField="namtotnghiep" HeaderText="Năm tốt Nghiệp" SortExpression="namtotnghiep" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TSDHConnectionString %>" DeleteCommand="DELETE FROM [ThongTinThiSinh] WHERE [cmnd] = @original_cmnd AND [hoten] = @original_hoten AND [ngaysinh] = @original_ngaysinh AND [gioitinh] = @original_gioitinh AND [noisinh] = @original_noisinh AND [dantoc] = @original_dantoc AND [hokhau] = @original_hokhau AND [doituongUT] = @original_doituongUT AND [email] = @original_email AND [phone] = @original_phone AND [lop10] = @original_lop10 AND [lop11] = @original_lop11 AND [lop12] = @original_lop12 AND [namtotnghiep] = @original_namtotnghiep AND [hanhkiem10] = @original_hanhkiem10 AND [hanhkiem11] = @original_hanhkiem11 AND [hanhkiem12] = @original_hanhkiem12" InsertCommand="INSERT INTO [ThongTinThiSinh] ([cmnd], [hoten], [ngaysinh], [gioitinh], [noisinh], [dantoc], [hokhau], [doituongUT], [email], [phone], [lop10], [lop11], [lop12], [namtotnghiep], [hanhkiem10], [hanhkiem11], [hanhkiem12]) VALUES (@cmnd, @hoten, @ngaysinh, @gioitinh, @noisinh, @dantoc, @hokhau, @doituongUT, @email, @phone, @lop10, @lop11, @lop12, @namtotnghiep, @hanhkiem10, @hanhkiem11, @hanhkiem12)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ThongTinThiSinh]" UpdateCommand="UPDATE [ThongTinThiSinh] SET [hoten] = @hoten, [ngaysinh] = @ngaysinh, [gioitinh] = @gioitinh, [noisinh] = @noisinh, [dantoc] = @dantoc, [hokhau] = @hokhau, [doituongUT] = @doituongUT, [email] = @email, [phone] = @phone, [lop10] = @lop10, [lop11] = @lop11, [lop12] = @lop12, [namtotnghiep] = @namtotnghiep, [hanhkiem10] = @hanhkiem10, [hanhkiem11] = @hanhkiem11, [hanhkiem12] = @hanhkiem12 WHERE [cmnd] = @original_cmnd AND [hoten] = @original_hoten AND [ngaysinh] = @original_ngaysinh AND [gioitinh] = @original_gioitinh AND [noisinh] = @original_noisinh AND [dantoc] = @original_dantoc AND [hokhau] = @original_hokhau AND [doituongUT] = @original_doituongUT AND [email] = @original_email AND [phone] = @original_phone AND [lop10] = @original_lop10 AND [lop11] = @original_lop11 AND [lop12] = @original_lop12 AND [namtotnghiep] = @original_namtotnghiep AND [hanhkiem10] = @original_hanhkiem10 AND [hanhkiem11] = @original_hanhkiem11 AND [hanhkiem12] = @original_hanhkiem12">
                <DeleteParameters>
                    <asp:Parameter Name="original_cmnd" Type="String" />
                    <asp:Parameter Name="original_hoten" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_ngaysinh" />
                    <asp:Parameter Name="original_gioitinh" Type="String" />
                    <asp:Parameter Name="original_noisinh" Type="String" />
                    <asp:Parameter Name="original_dantoc" Type="String" />
                    <asp:Parameter Name="original_hokhau" Type="String" />
                    <asp:Parameter Name="original_doituongUT" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_lop10" Type="String" />
                    <asp:Parameter Name="original_lop11" Type="String" />
                    <asp:Parameter Name="original_lop12" Type="String" />
                    <asp:Parameter Name="original_namtotnghiep" Type="Int32" />
                    <asp:Parameter Name="original_hanhkiem10" Type="String" />
                    <asp:Parameter Name="original_hanhkiem11" Type="String" />
                    <asp:Parameter Name="original_hanhkiem12" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="cmnd" Type="String" />
                    <asp:Parameter Name="hoten" Type="String" />
                    <asp:Parameter DbType="Date" Name="ngaysinh" />
                    <asp:Parameter Name="gioitinh" Type="String" />
                    <asp:Parameter Name="noisinh" Type="String" />
                    <asp:Parameter Name="dantoc" Type="String" />
                    <asp:Parameter Name="hokhau" Type="String" />
                    <asp:Parameter Name="doituongUT" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="lop10" Type="String" />
                    <asp:Parameter Name="lop11" Type="String" />
                    <asp:Parameter Name="lop12" Type="String" />
                    <asp:Parameter Name="namtotnghiep" Type="Int32" />
                    <asp:Parameter Name="hanhkiem10" Type="String" />
                    <asp:Parameter Name="hanhkiem11" Type="String" />
                    <asp:Parameter Name="hanhkiem12" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="hoten" Type="String" />
                    <asp:Parameter DbType="Date" Name="ngaysinh" />
                    <asp:Parameter Name="gioitinh" Type="String" />
                    <asp:Parameter Name="noisinh" Type="String" />
                    <asp:Parameter Name="dantoc" Type="String" />
                    <asp:Parameter Name="hokhau" Type="String" />
                    <asp:Parameter Name="doituongUT" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="lop10" Type="String" />
                    <asp:Parameter Name="lop11" Type="String" />
                    <asp:Parameter Name="lop12" Type="String" />
                    <asp:Parameter Name="namtotnghiep" Type="Int32" />
                    <asp:Parameter Name="hanhkiem10" Type="String" />
                    <asp:Parameter Name="hanhkiem11" Type="String" />
                    <asp:Parameter Name="hanhkiem12" Type="String" />
                    <asp:Parameter Name="original_cmnd" Type="String" />
                    <asp:Parameter Name="original_hoten" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_ngaysinh" />
                    <asp:Parameter Name="original_gioitinh" Type="String" />
                    <asp:Parameter Name="original_noisinh" Type="String" />
                    <asp:Parameter Name="original_dantoc" Type="String" />
                    <asp:Parameter Name="original_hokhau" Type="String" />
                    <asp:Parameter Name="original_doituongUT" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_lop10" Type="String" />
                    <asp:Parameter Name="original_lop11" Type="String" />
                    <asp:Parameter Name="original_lop12" Type="String" />
                    <asp:Parameter Name="original_namtotnghiep" Type="Int32" />
                    <asp:Parameter Name="original_hanhkiem10" Type="String" />
                    <asp:Parameter Name="original_hanhkiem11" Type="String" />
                    <asp:Parameter Name="original_hanhkiem12" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

