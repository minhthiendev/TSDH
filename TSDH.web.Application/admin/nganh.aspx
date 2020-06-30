<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="nganh.aspx.cs" Inherits="TSDH.web.Application.admin.nganh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
                    <a class="nav-link active" href="/admin/nganh">Ngành tuyển sinh</a>
                </li>
            </ul>
        </div>
        <div class="col-md-10 grid-view">
           
             <div class="col-md-12">
                <h3 ><a class="btn btn-outline-success" href="/admin/addnganh"><i class="fas fa-user-plus"></i></a></h3>
            </div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="manganh" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="100%">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" ButtonType="Image" CancelImageUrl="~/images/cancel.jpg" DeleteImageUrl="~/images/del_icon.png" EditImageUrl="~/images/edit_icon.png" SelectImageUrl="~/images/select.png" UpdateImageUrl="~/images/check.jpg" >
                    <ControlStyle Width="30px" />
                    </asp:CommandField>
                    <asp:BoundField DataField="manganh" HeaderText="manganh" ReadOnly="True" SortExpression="manganh" />
                    <asp:BoundField DataField="tennganh" HeaderText="tennganh" SortExpression="tennganh" />
                    <asp:BoundField DataField="chitieu" HeaderText="chitieu" SortExpression="chitieu" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TSDHConnectionString %>" DeleteCommand="DELETE FROM [NganhTuyenSinh] WHERE [manganh] = @original_manganh AND [tennganh] = @original_tennganh AND [chitieu] = @original_chitieu" InsertCommand="INSERT INTO [NganhTuyenSinh] ([manganh], [tennganh], [chitieu]) VALUES (@manganh, @tennganh, @chitieu)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [NganhTuyenSinh]" UpdateCommand="UPDATE [NganhTuyenSinh] SET [tennganh] = @tennganh, [chitieu] = @chitieu WHERE [manganh] = @original_manganh AND [tennganh] = @original_tennganh AND [chitieu] = @original_chitieu">
                <DeleteParameters>
                    <asp:Parameter Name="original_manganh" Type="String" />
                    <asp:Parameter Name="original_tennganh" Type="String" />
                    <asp:Parameter Name="original_chitieu" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="manganh" Type="String" />
                    <asp:Parameter Name="tennganh" Type="String" />
                    <asp:Parameter Name="chitieu" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tennganh" Type="String" />
                    <asp:Parameter Name="chitieu" Type="Int32" />
                    <asp:Parameter Name="original_manganh" Type="String" />
                    <asp:Parameter Name="original_tennganh" Type="String" />
                    <asp:Parameter Name="original_chitieu" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
