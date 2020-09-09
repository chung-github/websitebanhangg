<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="WebSiteBanDienThoai.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div>
         <asp:TextBox ID="txtTimKiem" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click1" Text="Tìm kiếm" Width="110px" />
    </div>
        <br />
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebSiteBanDienThoai.Database.DataSetDBTableAdapters.SANPHAMTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_MaSP" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="IDNhomSP" Type="String" />
            <asp:Parameter Name="IDLoaiSP" Type="String" />
            <asp:Parameter Name="GiaTien" Type="Double" />
            <asp:Parameter Name="MauSac" Type="String" />
            <asp:Parameter Name="HinhAnh" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="NgayDang" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="IDNhomSP" Type="String" />
            <asp:Parameter Name="IDLoaiSP" Type="String" />
            <asp:Parameter Name="GiaTien" Type="Double" />
            <asp:Parameter Name="MauSac" Type="String" />
            <asp:Parameter Name="HinhAnh" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="NgayDang" Type="DateTime" />
            <asp:Parameter Name="Original_MaSP" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:DataList ID="DataList2" runat="server" DataKeyField="MaSP" DataSourceID="ObjectDataSource2" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" RepeatColumns="3" Width="800px">
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
    <br />
    <br />

    </asp:Content>
