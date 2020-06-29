<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="TSDH.web.Application.admin.WebForm4" %>
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
           

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="username" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="100%">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TSDHConnectionString %>" DeleteCommand="DELETE FROM [Admin] WHERE [username] = @original_username AND [email] = @original_email AND [password] = @original_password" InsertCommand="INSERT INTO [Admin] ([username], [email], [password]) VALUES (@username, @email, @password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Admin]" UpdateCommand="UPDATE [Admin] SET [email] = @email, [password] = @password WHERE [username] = @original_username AND [email] = @original_email AND [password] = @original_password">
                <DeleteParameters>
                    <asp:Parameter Name="original_username" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_password" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="original_username" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_password" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
           

        </div>
</asp:Content>
