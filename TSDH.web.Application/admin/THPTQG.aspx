

<%@ Page Title="Quản lí ts THPTQG" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="THPTQG.aspx.cs" Inherits="TSDH.web.Application.Con_lau_moi_tim_duoc_trang_admin_nay_nha.THPTQG" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
      <div class="row" style="height: 90vh;">
            <div class="col-md-2 xx border">
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link " href="/admin/dashboard">Dashboard</a>
                </li>
               
                <li class="nav-item">
                    <a class="nav-link" href="/admin/HocBa">Học Bạ</a>
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
            <div class="col-md-10 p-3 grid-view">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="cmnd" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal"  Width="100%" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/cancel.jpg" DeleteImageUrl="~/images/del_icon.png" EditImageUrl="~/images/edit_icon.png" SelectImageUrl="~/images/select.png" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateImageUrl="~/images/check.jpg">
                        <ControlStyle Width="20px" />
                        </asp:CommandField>
                         <asp:ButtonField Text="view" CommandName="view"  ButtonType="Button" ControlStyle-CssClass="btn btn-outline-success"/>
                        <asp:BoundField DataField="cmnd" HeaderText="cmnd" ReadOnly="True" SortExpression="cmnd" />
                        <asp:BoundField DataField="hoten" HeaderText="hoten" SortExpression="hoten" />
                        <asp:BoundField DataField="ngaysinh" HeaderText="ngaysinh" SortExpression="ngaysinh" DataFormatString="{0:dd-MM-yyyy}" />
                        <asp:BoundField DataField="gioitinh" HeaderText="gioitinh" SortExpression="gioitinh" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        <asp:BoundField DataField="nv1" HeaderText="nv1" SortExpression="nv1" />
                        <asp:BoundField DataField="tohopnv1" HeaderText="tohopnv1" SortExpression="tohopnv1" />
                        <asp:BoundField DataField="diemnv1" HeaderText="diemnv1" SortExpression="diemnv1" />
                        <asp:BoundField DataField="nv2" HeaderText="nv2" SortExpression="nv2" />
                        <asp:BoundField DataField="tohopnv2" HeaderText="tohopnv2" SortExpression="tohopnv2" />
                        <asp:BoundField DataField="diemnv2" HeaderText="diemnv2" SortExpression="diemnv2" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TSDHConnectionString %>" DeleteCommand="DELETE FROM [TSbyTHPTQG] WHERE [cmnd] = @original_cmnd AND [hoten] = @original_hoten AND [ngaysinh] = @original_ngaysinh AND [gioitinh] = @original_gioitinh AND [email] = @original_email AND [phone] = @original_phone AND [nv1] = @original_nv1 AND [tohopnv1] = @original_tohopnv1 AND [diemnv1] = @original_diemnv1 AND [nv2] = @original_nv2 AND [tohopnv2] = @original_tohopnv2 AND [diemnv2] = @original_diemnv2" InsertCommand="INSERT INTO [TSbyTHPTQG] ([cmnd], [hoten], [ngaysinh], [gioitinh], [email], [phone], [nv1], [tohopnv1], [diemnv1], [nv2], [tohopnv2], [diemnv2]) VALUES (@cmnd, @hoten, @ngaysinh, @gioitinh, @email, @phone, @nv1, @tohopnv1, @diemnv1, @nv2, @tohopnv2, @diemnv2)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [cmnd], [hoten], [ngaysinh], [gioitinh], [email], [phone], [nv1], [tohopnv1], [diemnv1], [nv2], [tohopnv2], [diemnv2] FROM [TSbyTHPTQG]" UpdateCommand="UPDATE [TSbyTHPTQG] SET [hoten] = @hoten, [ngaysinh] = @ngaysinh, [gioitinh] = @gioitinh, [email] = @email, [phone] = @phone, [nv1] = @nv1, [tohopnv1] = @tohopnv1, [diemnv1] = @diemnv1, [nv2] = @nv2, [tohopnv2] = @tohopnv2, [diemnv2] = @diemnv2 WHERE [cmnd] = @original_cmnd AND [hoten] = @original_hoten AND [ngaysinh] = @original_ngaysinh AND [gioitinh] = @original_gioitinh AND [email] = @original_email AND [phone] = @original_phone AND [nv1] = @original_nv1 AND [tohopnv1] = @original_tohopnv1 AND [diemnv1] = @original_diemnv1 AND [nv2] = @original_nv2 AND [tohopnv2] = @original_tohopnv2 AND [diemnv2] = @original_diemnv2">
                    <DeleteParameters>
                        <asp:Parameter Name="original_cmnd" Type="String" />
                        <asp:Parameter Name="original_hoten" Type="String" />
                        <asp:Parameter Name="original_ngaysinh" DbType="Date" />
                        <asp:Parameter Name="original_gioitinh" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_phone" Type="String" />
                        <asp:Parameter Name="original_nv1" Type="String" />
                        <asp:Parameter Name="original_tohopnv1" Type="String" />
                        <asp:Parameter Name="original_diemnv1" Type="Double" />
                        <asp:Parameter Name="original_nv2" Type="String" />
                        <asp:Parameter Name="original_tohopnv2" Type="String" />
                        <asp:Parameter Name="original_diemnv2" Type="Double" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cmnd" Type="String" />
                        <asp:Parameter Name="hoten" Type="String" />
                        <asp:Parameter Name="ngaysinh" DbType="Date" />
                        <asp:Parameter Name="gioitinh" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="nv1" Type="String" />
                        <asp:Parameter Name="tohopnv1" Type="String" />
                        <asp:Parameter Name="diemnv1" Type="Double" />
                        <asp:Parameter Name="nv2" Type="String" />
                        <asp:Parameter Name="tohopnv2" Type="String" />
                        <asp:Parameter Name="diemnv2" Type="Double" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="hoten" Type="String" />
                        <asp:Parameter Name="ngaysinh" DbType="Date" />
                        <asp:Parameter Name="gioitinh" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="nv1" Type="String" />
                        <asp:Parameter Name="tohopnv1" Type="String" />
                        <asp:Parameter Name="diemnv1" Type="Double" />
                        <asp:Parameter Name="nv2" Type="String" />
                        <asp:Parameter Name="tohopnv2" Type="String" />
                        <asp:Parameter Name="diemnv2" Type="Double" />
                        <asp:Parameter Name="original_cmnd" Type="String" />
                        <asp:Parameter Name="original_hoten" Type="String" />
                        <asp:Parameter Name="original_ngaysinh" DbType="Date" />
                        <asp:Parameter Name="original_gioitinh" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_phone" Type="String" />
                        <asp:Parameter Name="original_nv1" Type="String" />
                        <asp:Parameter Name="original_tohopnv1" Type="String" />
                        <asp:Parameter Name="original_diemnv1" Type="Double" />
                        <asp:Parameter Name="original_nv2" Type="String" />
                        <asp:Parameter Name="original_tohopnv2" Type="String" />
                        <asp:Parameter Name="original_diemnv2" Type="Double" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
 
</asp:Content>

       