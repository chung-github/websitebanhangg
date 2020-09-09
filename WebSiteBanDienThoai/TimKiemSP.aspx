<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TimKiemSP.aspx.cs" Inherits="WebSiteBanDienThoai.TimKiemSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
     <asp:Button ID="Button1" runat="server" Text="Trở lại" OnClick="Button1_Click" Width="100px" />
     <button type="button" onclick="loadDoc()">Change Content</button>
    <br />
    <br />
    <asp:DataList ID="DataList2" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="780px">
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
                        <asp:ImageButton runat="server" ImageUrl="~/Images/button_buy.gif" Width ="83px" CssClass="btnhuy" CommandArgument='<%# Eval("maSP") %>' Text="Thêm vào giỏ hàng" OnClick="BtnThemGioHang_Click" />
                </tr>

            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyCuaHangBanDienThoaiConnectionString %>" SelectCommand="SELECT MaSP, TenSP, IDNhomSP, IDLoaiSP, GiaTien, MauSac, HinhAnh, MoTa, NgayDang FROM SANPHAM WHERE (TenSP LIKE '%' + @Param1 + '%')">
        <SelectParameters>
            <asp:QueryStringParameter Name="Param1" QueryStringField="TenSP" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
