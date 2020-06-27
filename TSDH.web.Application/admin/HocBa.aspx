
<%@ Page Title="Quản lí ts học bạ" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="HocBa.aspx.cs" Inherits="TSDH.web.Application.Con_lau_moi_tim_duoc_trang_admin_nay_nha.HocBa" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style="height: 90vh;">
        <div class="col-md-2 bg-dark ">
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link " href="/admin/dashboard">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/ThongTinThiSinh">Hồ sơ thí sinh</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/admin/HocBa">Học Bạ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/THPTQG">THPT Quốc Gia</a>
                </li>
            </ul>
        </div>
        <div class="col-md-10 p-3 grid-view">
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="cmnd" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="1398px">
                <columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" CancelImageUrl="../images/cancel.jpg" CancelText="" DeleteImageUrl="../images/del_icon.png" DeleteText="" EditImageUrl="../images/edit_icon.png" EditText="" SelectImageUrl="../images/select.png" SelectText="" UpdateImageUrl="../images/check.jpg" UpdateText="" ButtonType="Image">
                            <ControlStyle Width="30px" />
                        </asp:CommandField>
                        <asp:BoundField DataField="cmnd" HeaderText="Cmnd" ReadOnly="True" SortExpression="cmnd" />
                        <asp:BoundField DataField="nv" HeaderText="Nguyện Vọng" SortExpression="nv" />
                        <asp:BoundField DataField="tohop" HeaderText="Tổ Hợp" SortExpression="tohop" />
                        <asp:BoundField DataField="m110" HeaderText="Môn 1_10" SortExpression="m110" />
                        <asp:BoundField DataField="m210" HeaderText="Môn 2_10" SortExpression="m210" />
                        <asp:BoundField DataField="m310" HeaderText="Môn 3_10" SortExpression="m310" />
                        <asp:BoundField DataField="m111" HeaderText="Môn 1_11" SortExpression="m111" />
                        <asp:BoundField DataField="m211" HeaderText="Môn 2_11" SortExpression="m211" />
                        <asp:BoundField DataField="m311" HeaderText="Môn 3_11" SortExpression="m311" />
                        <asp:BoundField DataField="m112" HeaderText="Môn 1_12" SortExpression="m112" />
                        <asp:BoundField DataField="m212" HeaderText="Môn 2_12" SortExpression="m212" />
                        <asp:BoundField DataField="m312" HeaderText="Môn 3_12" SortExpression="m312" />
                    </columns>
                <footerstyle backcolor="#CCCC99" forecolor="Black" />
                <headerstyle backcolor="#333333" font-bold="True" forecolor="White" />
                <pagerstyle backcolor="White" forecolor="Black" horizontalalign="Right" />
                <selectedrowstyle backcolor="#CC3333" font-bold="True" forecolor="White" />
                <sortedascendingcellstyle backcolor="#F7F7F7" />
                <sortedascendingheaderstyle backcolor="#4B4B4B" />
                <sorteddescendingcellstyle backcolor="#E5E5E5" />
                <sorteddescendingheaderstyle backcolor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TSDHConnectionString %>" DeleteCommand="DELETE FROM [XetTuyenByHocBa] WHERE [cmnd] = @original_cmnd AND (([nv] = @original_nv) OR ([nv] IS NULL AND @original_nv IS NULL)) AND (([tohop] = @original_tohop) OR ([tohop] IS NULL AND @original_tohop IS NULL)) AND (([m110] = @original_m110) OR ([m110] IS NULL AND @original_m110 IS NULL)) AND (([m210] = @original_m210) OR ([m210] IS NULL AND @original_m210 IS NULL)) AND (([m310] = @original_m310) OR ([m310] IS NULL AND @original_m310 IS NULL)) AND (([m111] = @original_m111) OR ([m111] IS NULL AND @original_m111 IS NULL)) AND (([m211] = @original_m211) OR ([m211] IS NULL AND @original_m211 IS NULL)) AND (([m311] = @original_m311) OR ([m311] IS NULL AND @original_m311 IS NULL)) AND (([m112] = @original_m112) OR ([m112] IS NULL AND @original_m112 IS NULL)) AND (([m212] = @original_m212) OR ([m212] IS NULL AND @original_m212 IS NULL)) AND (([m312] = @original_m312) OR ([m312] IS NULL AND @original_m312 IS NULL)) AND (([images10] = @original_images10) OR ([images10] IS NULL AND @original_images10 IS NULL)) AND (([images11] = @original_images11) OR ([images11] IS NULL AND @original_images11 IS NULL)) AND (([images12] = @original_images12) OR ([images12] IS NULL AND @original_images12 IS NULL))" InsertCommand="INSERT INTO [XetTuyenByHocBa] ([cmnd], [nv], [tohop], [m110], [m210], [m310], [m111], [m211], [m311], [m112], [m212], [m312], [images10], [images11], [images12]) VALUES (@cmnd, @nv, @tohop, @m110, @m210, @m310, @m111, @m211, @m311, @m112, @m212, @m312, @images10, @images11, @images12)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [XetTuyenByHocBa]" UpdateCommand="UPDATE [XetTuyenByHocBa] SET [nv] = @nv, [tohop] = @tohop, [m110] = @m110, [m210] = @m210, [m310] = @m310, [m111] = @m111, [m211] = @m211, [m311] = @m311, [m112] = @m112, [m212] = @m212, [m312] = @m312, [images10] = @images10, [images11] = @images11, [images12] = @images12 WHERE [cmnd] = @original_cmnd AND (([nv] = @original_nv) OR ([nv] IS NULL AND @original_nv IS NULL)) AND (([tohop] = @original_tohop) OR ([tohop] IS NULL AND @original_tohop IS NULL)) AND (([m110] = @original_m110) OR ([m110] IS NULL AND @original_m110 IS NULL)) AND (([m210] = @original_m210) OR ([m210] IS NULL AND @original_m210 IS NULL)) AND (([m310] = @original_m310) OR ([m310] IS NULL AND @original_m310 IS NULL)) AND (([m111] = @original_m111) OR ([m111] IS NULL AND @original_m111 IS NULL)) AND (([m211] = @original_m211) OR ([m211] IS NULL AND @original_m211 IS NULL)) AND (([m311] = @original_m311) OR ([m311] IS NULL AND @original_m311 IS NULL)) AND (([m112] = @original_m112) OR ([m112] IS NULL AND @original_m112 IS NULL)) AND (([m212] = @original_m212) OR ([m212] IS NULL AND @original_m212 IS NULL)) AND (([m312] = @original_m312) OR ([m312] IS NULL AND @original_m312 IS NULL)) AND (([images10] = @original_images10) OR ([images10] IS NULL AND @original_images10 IS NULL)) AND (([images11] = @original_images11) OR ([images11] IS NULL AND @original_images11 IS NULL)) AND (([images12] = @original_images12) OR ([images12] IS NULL AND @original_images12 IS NULL))">
                <deleteparameters>
                        <asp:Parameter Name="original_cmnd" Type="String" />
                        <asp:Parameter Name="original_nv" Type="String" />
                        <asp:Parameter Name="original_tohop" Type="String" />
                        <asp:Parameter Name="original_m110" Type="String" />
                        <asp:Parameter Name="original_m210" Type="String" />
                        <asp:Parameter Name="original_m310" Type="String" />
                        <asp:Parameter Name="original_m111" Type="String" />
                        <asp:Parameter Name="original_m211" Type="String" />
                        <asp:Parameter Name="original_m311" Type="String" />
                        <asp:Parameter Name="original_m112" Type="String" />
                        <asp:Parameter Name="original_m212" Type="String" />
                        <asp:Parameter Name="original_m312" Type="String" />
                        <asp:Parameter Name="original_images10" Type="String" />
                        <asp:Parameter Name="original_images11" Type="String" />
                        <asp:Parameter Name="original_images12" Type="String" />
                    </deleteparameters>
                <insertparameters>
                        <asp:Parameter Name="cmnd" Type="String" />
                        <asp:Parameter Name="nv" Type="String" />
                        <asp:Parameter Name="tohop" Type="String" />
                        <asp:Parameter Name="m110" Type="String" />
                        <asp:Parameter Name="m210" Type="String" />
                        <asp:Parameter Name="m310" Type="String" />
                        <asp:Parameter Name="m111" Type="String" />
                        <asp:Parameter Name="m211" Type="String" />
                        <asp:Parameter Name="m311" Type="String" />
                        <asp:Parameter Name="m112" Type="String" />
                        <asp:Parameter Name="m212" Type="String" />
                        <asp:Parameter Name="m312" Type="String" />
                        <asp:Parameter Name="images10" Type="String" />
                        <asp:Parameter Name="images11" Type="String" />
                        <asp:Parameter Name="images12" Type="String" />
                    </insertparameters>
                <updateparameters>
                        <asp:Parameter Name="nv" Type="String" />
                        <asp:Parameter Name="tohop" Type="String" />
                        <asp:Parameter Name="m110" Type="String" />
                        <asp:Parameter Name="m210" Type="String" />
                        <asp:Parameter Name="m310" Type="String" />
                        <asp:Parameter Name="m111" Type="String" />
                        <asp:Parameter Name="m211" Type="String" />
                        <asp:Parameter Name="m311" Type="String" />
                        <asp:Parameter Name="m112" Type="String" />
                        <asp:Parameter Name="m212" Type="String" />
                        <asp:Parameter Name="m312" Type="String" />
                        <asp:Parameter Name="images10" Type="String" />
                        <asp:Parameter Name="images11" Type="String" />
                        <asp:Parameter Name="images12" Type="String" />
                        <asp:Parameter Name="original_cmnd" Type="String" />
                        <asp:Parameter Name="original_nv" Type="String" />
                        <asp:Parameter Name="original_tohop" Type="String" />
                        <asp:Parameter Name="original_m110" Type="String" />
                        <asp:Parameter Name="original_m210" Type="String" />
                        <asp:Parameter Name="original_m310" Type="String" />
                        <asp:Parameter Name="original_m111" Type="String" />
                        <asp:Parameter Name="original_m211" Type="String" />
                        <asp:Parameter Name="original_m311" Type="String" />
                        <asp:Parameter Name="original_m112" Type="String" />
                        <asp:Parameter Name="original_m212" Type="String" />
                        <asp:Parameter Name="original_m312" Type="String" />
                        <asp:Parameter Name="original_images10" Type="String" />
                        <asp:Parameter Name="original_images11" Type="String" />
                        <asp:Parameter Name="original_images12" Type="String" />
                    </updateparameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
