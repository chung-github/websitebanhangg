<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DanhMucTheoSanPham.aspx.cs" Inherits="WebSiteBanDienThoai.DanhMucTheoSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy1" TypeName="WebSiteBanDienThoai.Database.DataSetDBTableAdapters.SANPHAMTableAdapter">
                <SelectParameters>
                    <asp:QueryStringParameter Name="IDLoaiSP" QueryStringField="ID" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:DataList ID="DataList2" runat="server" DataKeyField="MaSP" DataSourceID="ObjectDataSource2" RepeatColumns="3" Width="787px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
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
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
