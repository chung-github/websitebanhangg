<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="WebSiteBanDienThoai.TrangChu1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
  <h3>Sản phẩm khuyến mãi</h3>
  <br />
    <asp:DataList ID="DataList2" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource1" RepeatColumns="3" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" Width="799px">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="158px" ImageUrl='<%# Eval("HinhAnh","~/{0}") %>' Width="157px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaTien", "{0:000,000} VND") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink3" runat="server" Width="77px" ImageUrl="~/Images/button_detail.jpg" NavigateUrl='<%# Eval("MaSP","ChiTietSanPham.aspx?ID={0}") %>' style="margin-left: 0px">Chi tiết sản phẩm</asp:HyperLink>
                        <asp:ImageButton runat="server" ImageUrl="~/Images/mua-hang.PNG" CssClass="btnhuy" CommandArgument='<%# Eval("maSP") %>' Text="Thêm vào giỏ hàng" OnClick="BtnThemGioHang_Click" />
                </tr>

            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyCuaHangBanDienThoaiConnectionString %>" SelectCommand="SELECT * FROM SANPHAM WHERE IDNhomSP = N'Nhóm 1'"></asp:SqlDataSource>
    <br />
    <br />
    <h3>Sản phẩm bán chạy</h3>

    <asp:DataList ID="DataList3" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" RepeatColumns="3" Width="801px">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="158px" ImageUrl='<%# Eval("HinhAnh","~/{0}") %>' Width="157px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaTien", "{0:000,000} VND") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink3" runat="server" Width="77px" ImageUrl="~/Images/button_detail.jpg" NavigateUrl='<%# Eval("MaSP","ChiTietSanPham.aspx?ID={0}") %>' style="margin-left: 0px">Chi tiết sản phẩm</asp:HyperLink>
                        <asp:ImageButton runat="server" ImageUrl="~/Images/mua-hang.PNG" CssClass="btnhuy" CommandArgument='<%# Eval("maSP") %>' Text="Thêm vào giỏ hàng" OnClick="BtnThemGioHang_Click" />
                </tr>

            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyCuaHangBanDienThoaiConnectionString %>" SelectCommand="SELECT * FROM SANPHAM WHERE IDNhomSP = N'Nhóm 2'"></asp:SqlDataSource>

    <br />
    <br />
    <h3>Sản phẩm ưu chuộng</h3>
    <asp:DataList ID="DataList4" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" RepeatColumns="3" Width="799px">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="158px" ImageUrl='<%# Eval("HinhAnh","~/{0}") %>' Width="157px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaTien", "{0:000,000} VND") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink3" runat="server" Width="77px" ImageUrl="~/Images/button_detail.jpg" NavigateUrl='<%# Eval("MaSP","ChiTietSanPham.aspx?ID={0}") %>' style="margin-left: 0px">Chi tiết sản phẩm</asp:HyperLink>
                        <asp:ImageButton runat="server" ImageUrl="~/Images/mua-hang.PNG" CssClass="btnhuy" CommandArgument='<%# Eval("maSP") %>' Text="Thêm vào giỏ hàng" OnClick="BtnThemGioHang_Click" />
                </tr>

            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyCuaHangBanDienThoaiConnectionString %>" SelectCommand="SELECT * FROM SANPHAM WHERE IDNhomSP = N'Nhóm 3'"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <h3>Sản phẩm nổi bật</h3>
    <asp:DataList ID="DataList5" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" RepeatColumns="3" Width="800px">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="158px" ImageUrl='<%# Eval("HinhAnh","~/{0}") %>' Width="157px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaTien", "{0:000,000} VND") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink3" runat="server" Width="77px" ImageUrl="~/Images/button_detail.jpg" NavigateUrl='<%# Eval("MaSP","ChiTietSanPham.aspx?ID={0}") %>' style="margin-left: 0px">Chi tiết sản phẩm</asp:HyperLink>
                        <asp:ImageButton runat="server" ImageUrl="~/Images/mua-hang.PNG" CssClass="btnhuy" CommandArgument='<%# Eval("maSP") %>' Text="Thêm vào giỏ hàng" OnClick="BtnThemGioHang_Click" />
                </tr>

            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyCuaHangBanDienThoaiConnectionString %>" SelectCommand="SELECT * FROM SANPHAM WHERE IDNhomSP = N'Nhóm 4'"></asp:SqlDataSource>
    <br />
    <br />
    <h3>Sản phẩm hot</h3>
    <asp:DataList ID="DataList6" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource5" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" RepeatColumns="3" Width="800px">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="158px" ImageUrl='<%# Eval("HinhAnh","~/{0}") %>' Width="157px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaTien", "{0:000,000} VND") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink3" runat="server" Width="77px" ImageUrl="~/Images/button_detail.jpg" NavigateUrl='<%# Eval("MaSP","ChiTietSanPham.aspx?ID={0}") %>' style="margin-left: 0px">Chi tiết sản phẩm</asp:HyperLink>
                        <asp:ImageButton runat="server" ImageUrl="~/Images/mua-hang.PNG" CssClass="btnhuy" CommandArgument='<%# Eval("maSP") %>' Text="Thêm vào giỏ hàng" OnClick="BtnThemGioHang_Click" />
                </tr>

            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyCuaHangBanDienThoaiConnectionString %>" SelectCommand="SELECT * FROM SANPHAM WHERE IDNhomSP = N'Nhóm 5'"></asp:SqlDataSource>
    <br />
    <br />
</asp:Content>
