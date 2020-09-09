<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="WebSiteBanDienThoai.ThemGioHang" %>
    <asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
        <title>Giỏ hàng</title>
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SanPham.aspx">Tiếp tục mua hàng</asp:HyperLink>
    <br /> <br />
    <asp:GridView runat="server" id="gridviewGioHang"
                        AutoGenerateColumns="False"
                        ForeGround="Black"
                        Horizon-Align="center" CaptionAlign="Top"
                        >    
                        <HeaderStyle Height="30px" Font-Bold="true" HorizontalAlign="Center" VerticalAlign="Middle"/>
                        <Columns>
                            <asp:TemplateField HeaderText="Sản Phẩm" ItemStyle-Width="30%" HeaderStyle-Width="30%" ItemStyle-HorizontalAlign="Center" >
                                <ItemTemplate>
                                    <div>       
                                        <img src='<%#Eval("HinhAnh") %>' style="width:125px; height:141px; margin: 0 auto;" /><br />
                                        <p style="padding: 15px; color:#f28902" class="gh-ten"><%#Eval("TenSP") %></p>
                                     </div>
                                </ItemTemplate>

<HeaderStyle Width="30%"></HeaderStyle>

<ItemStyle Width="30%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Giá" ItemStyle-Width="20%" HeaderStyle-Width="20%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <p id="gia"><%#Eval("GiaTien") %></p>
                                </ItemTemplate>

<HeaderStyle Width="20%"></HeaderStyle>

<ItemStyle Width="20%"></ItemStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Số lượng" ItemStyle-Width="15%" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtSoLuong" runat="server" TextMode="Number" cssClass="" Text='<%#Bind("soluong") %>'
                                        AutoPostBack="true" OnTextChanged="txtSoLuong_TextChanged"
                                        CommandArgument='<%# Eval("maSP") %>' Width="70px">
                                        
                                    </asp:TextBox>
                                </ItemTemplate>

<HeaderStyle Width="15%"></HeaderStyle>

<ItemStyle Width="15%"></ItemStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Thành tiền" ItemStyle-Width="20%" HeaderStyle-Width="20%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <p id="tongtien" class=""><%#Eval("thanhTien") %></p>
                                </ItemTemplate>

<HeaderStyle Width="20%"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="20%"></ItemStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Loại bỏ" ItemStyle-Width="15%" HeaderStyle-Width="15%">
                                <ItemTemplate>
                                    <asp:Button runat="server" CssClass="" CommandArgument='<%# Eval("MaSP") %>' Text="Xóa" OnClick="BtnXoa_Click" />
                                </ItemTemplate>

<HeaderStyle Width="15%"></HeaderStyle>

<ItemStyle Width="15%"></ItemStyle>
                            </asp:TemplateField>
                        </Columns>       
            </asp:GridView>
    
</asp:Content>
