<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="WebSiteBanDienThoai.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="WebSiteBanDienThoai.Database.DataSetDBTableAdapters.SANPHAMTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_MaSP" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSP" Type="String" />
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="IDNhomSP" Type="String" />
            <asp:Parameter Name="IDLoaiSP" Type="String" />
            <asp:Parameter Name="GiaTien" Type="Double" />
            <asp:Parameter Name="MauSac" Type="String" />
            <asp:Parameter Name="HinhAnh" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="NgayDang" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="MaSP" QueryStringField="ID" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="IDNhomSP" Type="String" />
            <asp:Parameter Name="IDLoaiSP" Type="String" />
            <asp:Parameter Name="GiaTien" Type="Double" />
            <asp:Parameter Name="MauSac" Type="String" />
            <asp:Parameter Name="HinhAnh" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="NgayDang" Type="DateTime" />
            <asp:Parameter Name="Original_MaSP" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:DataList ID="DataList2" runat="server" DataKeyField="MaSP" DataSourceID="ObjectDataSource2">
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td style="width: 183px">&nbsp;<asp:Image ID="Image1" runat="server" Height="206px" ImageUrl='<%# Eval("HinhAnh","~/{0}") %>' Width="168px" /></td>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <br />
                                    <br />
                                    <table style="width: 514px; height: 135px;">
                                        <tr>
                                            <td style="width: 53px; padding-right:35px">
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label><br />
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaTien", "{0:000,000} VND") %>'></asp:Label>
                                                <br />
                                                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/button_back.jpg" NavigateUrl='<%# "SanPham.aspx" %>' Width="80px">Trở về</asp:HyperLink>
                                                <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Images/button_buy.gif" NavigateUrl='<%# Eval("MaSP","GioHang.aspx?MaSP={0}") %>' Width="80px">Thêm vào giỏ hàng</asp:HyperLink>
                                            </td>
                                            <td style="border:1px solid black; padding:10px; height: 43px;width: 165px"><strong><span style="font-size: large">Thông số kỹ thuật<br /></span></strong>&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;
                                    </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="width:180px"> 
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>  
</asp:Content>
