

<%@ Page Title="Quản lí ts THPTQG" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="THPTQG.aspx.cs" Inherits="TSDH.web.Application.Con_lau_moi_tim_duoc_trang_admin_nay_nha.THPTQG" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
      <div class="row" style="height: 90vh;">
            <div class="col-md-2 bg-dark ">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/dashboard">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/ThongTinThiSinh">Hồ sơ thí sinh</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/HocBa">Học Bạ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/admin/THPTQG">THPT Quốc Gia</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-10 p-3 grid-view">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="cmnd" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="1401px">
                    <Columns>
                        <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/cancel.jpg" DeleteImageUrl="~/images/del_icon.png" EditImageUrl="~/images/edit_icon.png" SelectImageUrl="~/images/select.png" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateImageUrl="~/images/check.jpg">
                        <ControlStyle Width="30px" />
                        </asp:CommandField>
                        <asp:BoundField DataField="cmnd" HeaderText="Cmnd" ReadOnly="True" SortExpression="cmnd" />
                        <asp:BoundField DataField="nv1" HeaderText="Nguyên vọng 1" SortExpression="nv1" />
                        <asp:BoundField DataField="nv2" HeaderText="Nguyện vọng 2" SortExpression="nv2" />
                        <asp:BoundField DataField="tohopnv1" HeaderText="Tổ hợp nv1" SortExpression="tohopnv1" />
                        <asp:BoundField DataField="tohopnv2" HeaderText="Tổ hợp nv2" SortExpression="tohopnv2" />
                        <asp:BoundField DataField="mon1nv1" HeaderText="Môn 1 nv1" SortExpression="mon1nv1" />
                        <asp:BoundField DataField="mon2nv1" HeaderText="Môn 2 nv1" SortExpression="mon2nv1" />
                        <asp:BoundField DataField="mon3nv1" HeaderText="Môn 3 nv1" SortExpression="mon3nv1" />
                        <asp:BoundField DataField="mon1nv2" HeaderText="Môn 1 nv2" SortExpression="mon1nv2" />
                        <asp:BoundField DataField="mon2nv2" HeaderText="Môn 2 nv2" SortExpression="mon2nv2" />
                        <asp:BoundField DataField="mon3nv2" HeaderText="Môn 3 nv2" SortExpression="mon3nv2" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TSDHConnectionString %>" DeleteCommand="DELETE FROM [XetTuyenByHTPTQG] WHERE [cmnd] = @original_cmnd AND (([nv1] = @original_nv1) OR ([nv1] IS NULL AND @original_nv1 IS NULL)) AND (([nv2] = @original_nv2) OR ([nv2] IS NULL AND @original_nv2 IS NULL)) AND (([tohopnv1] = @original_tohopnv1) OR ([tohopnv1] IS NULL AND @original_tohopnv1 IS NULL)) AND (([tohopnv2] = @original_tohopnv2) OR ([tohopnv2] IS NULL AND @original_tohopnv2 IS NULL)) AND (([mon1nv1] = @original_mon1nv1) OR ([mon1nv1] IS NULL AND @original_mon1nv1 IS NULL)) AND (([mon2nv1] = @original_mon2nv1) OR ([mon2nv1] IS NULL AND @original_mon2nv1 IS NULL)) AND (([mon3nv1] = @original_mon3nv1) OR ([mon3nv1] IS NULL AND @original_mon3nv1 IS NULL)) AND (([mon1nv2] = @original_mon1nv2) OR ([mon1nv2] IS NULL AND @original_mon1nv2 IS NULL)) AND (([mon2nv2] = @original_mon2nv2) OR ([mon2nv2] IS NULL AND @original_mon2nv2 IS NULL)) AND (([mon3nv2] = @original_mon3nv2) OR ([mon3nv2] IS NULL AND @original_mon3nv2 IS NULL))" InsertCommand="INSERT INTO [XetTuyenByHTPTQG] ([cmnd], [nv1], [nv2], [tohopnv1], [tohopnv2], [mon1nv1], [mon2nv1], [mon3nv1], [mon1nv2], [mon2nv2], [mon3nv2]) VALUES (@cmnd, @nv1, @nv2, @tohopnv1, @tohopnv2, @mon1nv1, @mon2nv1, @mon3nv1, @mon1nv2, @mon2nv2, @mon3nv2)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [XetTuyenByHTPTQG]" UpdateCommand="UPDATE [XetTuyenByHTPTQG] SET [nv1] = @nv1, [nv2] = @nv2, [tohopnv1] = @tohopnv1, [tohopnv2] = @tohopnv2, [mon1nv1] = @mon1nv1, [mon2nv1] = @mon2nv1, [mon3nv1] = @mon3nv1, [mon1nv2] = @mon1nv2, [mon2nv2] = @mon2nv2, [mon3nv2] = @mon3nv2 WHERE [cmnd] = @original_cmnd AND (([nv1] = @original_nv1) OR ([nv1] IS NULL AND @original_nv1 IS NULL)) AND (([nv2] = @original_nv2) OR ([nv2] IS NULL AND @original_nv2 IS NULL)) AND (([tohopnv1] = @original_tohopnv1) OR ([tohopnv1] IS NULL AND @original_tohopnv1 IS NULL)) AND (([tohopnv2] = @original_tohopnv2) OR ([tohopnv2] IS NULL AND @original_tohopnv2 IS NULL)) AND (([mon1nv1] = @original_mon1nv1) OR ([mon1nv1] IS NULL AND @original_mon1nv1 IS NULL)) AND (([mon2nv1] = @original_mon2nv1) OR ([mon2nv1] IS NULL AND @original_mon2nv1 IS NULL)) AND (([mon3nv1] = @original_mon3nv1) OR ([mon3nv1] IS NULL AND @original_mon3nv1 IS NULL)) AND (([mon1nv2] = @original_mon1nv2) OR ([mon1nv2] IS NULL AND @original_mon1nv2 IS NULL)) AND (([mon2nv2] = @original_mon2nv2) OR ([mon2nv2] IS NULL AND @original_mon2nv2 IS NULL)) AND (([mon3nv2] = @original_mon3nv2) OR ([mon3nv2] IS NULL AND @original_mon3nv2 IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_cmnd" Type="String" />
                        <asp:Parameter Name="original_nv1" Type="String" />
                        <asp:Parameter Name="original_nv2" Type="String" />
                        <asp:Parameter Name="original_tohopnv1" Type="String" />
                        <asp:Parameter Name="original_tohopnv2" Type="String" />
                        <asp:Parameter Name="original_mon1nv1" Type="String" />
                        <asp:Parameter Name="original_mon2nv1" Type="String" />
                        <asp:Parameter Name="original_mon3nv1" Type="String" />
                        <asp:Parameter Name="original_mon1nv2" Type="String" />
                        <asp:Parameter Name="original_mon2nv2" Type="String" />
                        <asp:Parameter Name="original_mon3nv2" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cmnd" Type="String" />
                        <asp:Parameter Name="nv1" Type="String" />
                        <asp:Parameter Name="nv2" Type="String" />
                        <asp:Parameter Name="tohopnv1" Type="String" />
                        <asp:Parameter Name="tohopnv2" Type="String" />
                        <asp:Parameter Name="mon1nv1" Type="String" />
                        <asp:Parameter Name="mon2nv1" Type="String" />
                        <asp:Parameter Name="mon3nv1" Type="String" />
                        <asp:Parameter Name="mon1nv2" Type="String" />
                        <asp:Parameter Name="mon2nv2" Type="String" />
                        <asp:Parameter Name="mon3nv2" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nv1" Type="String" />
                        <asp:Parameter Name="nv2" Type="String" />
                        <asp:Parameter Name="tohopnv1" Type="String" />
                        <asp:Parameter Name="tohopnv2" Type="String" />
                        <asp:Parameter Name="mon1nv1" Type="String" />
                        <asp:Parameter Name="mon2nv1" Type="String" />
                        <asp:Parameter Name="mon3nv1" Type="String" />
                        <asp:Parameter Name="mon1nv2" Type="String" />
                        <asp:Parameter Name="mon2nv2" Type="String" />
                        <asp:Parameter Name="mon3nv2" Type="String" />
                        <asp:Parameter Name="original_cmnd" Type="String" />
                        <asp:Parameter Name="original_nv1" Type="String" />
                        <asp:Parameter Name="original_nv2" Type="String" />
                        <asp:Parameter Name="original_tohopnv1" Type="String" />
                        <asp:Parameter Name="original_tohopnv2" Type="String" />
                        <asp:Parameter Name="original_mon1nv1" Type="String" />
                        <asp:Parameter Name="original_mon2nv1" Type="String" />
                        <asp:Parameter Name="original_mon3nv1" Type="String" />
                        <asp:Parameter Name="original_mon1nv2" Type="String" />
                        <asp:Parameter Name="original_mon2nv2" Type="String" />
                        <asp:Parameter Name="original_mon3nv2" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
 
</asp:Content>

       