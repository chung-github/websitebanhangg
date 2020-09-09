<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QuanLySanPham.aspx.cs" Inherits="WebSiteBanDienThoai.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <form>
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="txtTimkiem" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:Button ID="btnTimKiem" runat="server" Text="Tìm kiếm" OnClick="btnTimKiem_Click" />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>

                <br />
                <table style="width: 100%">
                    <tr>
                        <td style="width: 157px">Mã sản phẩm</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 157px">Tên sản phẩm</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 157px">Mã nhóm sản phẩm</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 157px">Mã loại sản phẩm</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 157px">Giá tiền</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 157px">Màu sắc</td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 157px; height: 26px">Hình ảnh</td>
                        <td style="height: 26px">
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 157px">Mô tả</td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 157px">Ngày đăng</td>
                        <td>
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>

            </form>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebSiteBanDienThoai.Database.DataSetDBTableAdapters.SANPHAMTableAdapter" UpdateMethod="Update">
    <DeleteParameters>
        <asp:Parameter Name="Original_IDMaSP" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="IDMaSP" Type="String" />
        <asp:Parameter Name="TenSP" Type="String" />
        <asp:Parameter Name="IDNhomSP" Type="String" />
        <asp:Parameter Name="IDLoaiSP" Type="String" />
        <asp:Parameter Name="HinhAnh" Type="String" />
        <asp:Parameter Name="MoTa" Type="String" />
        <asp:Parameter Name="NgayDang" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TenSP" Type="String" />
        <asp:Parameter Name="IDNhomSP" Type="String" />
        <asp:Parameter Name="IDLoaiSP" Type="String" />
        <asp:Parameter Name="HinhAnh" Type="String" />
        <asp:Parameter Name="MoTa" Type="String" />
        <asp:Parameter Name="NgayDang" Type="DateTime" />
        <asp:Parameter Name="Original_IDMaSP" Type="String" />
    </UpdateParameters>
</asp:ObjectDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="IDMaSP" DataSourceID="ObjectDataSource1" Width="940px" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" InsertText="Thêm" NewText="Thêm mới" SelectText="Thêm" UpdateText="Cập nhật" />
        <asp:BoundField DataField="IDMaSP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="IDMaSP" />
        <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" SortExpression="TenSP" />
        <asp:BoundField DataField="IDNhomSP" HeaderText="Nhóm sản phẩm" SortExpression="IDNhomSP" />
        <asp:BoundField DataField="IDLoaiSP" HeaderText="Loại sản phẩm" SortExpression="IDLoaiSP" />
        <asp:BoundField DataField="HinhAnh" HeaderText="Hình ảnh" SortExpression="HinhAnh" />
        <asp:BoundField DataField="MoTa" HeaderText="Mô tả" SortExpression="MoTa" />
        <asp:BoundField DataField="NgayDang" HeaderText="Ngày đăng" SortExpression="NgayDang" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="WebSiteBanDienThoai.Database.DataSetDBTableAdapters.SANPHAMTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_IDMaSP" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDMaSP" Type="String" />
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="IDNhomSP" Type="String" />
            <asp:Parameter Name="IDLoaiSP" Type="String" />
            <asp:Parameter Name="HinhAnh" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="NgayDang" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="IDMaSP" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="IDNhomSP" Type="String" />
            <asp:Parameter Name="IDLoaiSP" Type="String" />
            <asp:Parameter Name="HinhAnh" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="NgayDang" Type="DateTime" />
            <asp:Parameter Name="Original_IDMaSP" Type="String" />
        </UpdateParameters>
</asp:ObjectDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IDMaSP" DataSourceID="ObjectDataSource2" Height="50px" Width="672px" OnItemInserted="DetailsView1_ItemInserted" OnItemInserting="DetailsView1_ItemInserting" OnItemUpdated="DetailsView1_ItemUpdated" OnItemUpdating="DetailsView1_ItemUpdating">
    <Fields>
        <asp:BoundField DataField="IDMaSP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="IDMaSP" />
        <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" SortExpression="TenSP" />
        <asp:BoundField DataField="IDNhomSP" HeaderText="Nhóm sản phẩm" SortExpression="IDNhomSP" />
        <asp:BoundField DataField="IDLoaiSP" HeaderText="Loại sản phẩm" SortExpression="IDLoaiSP" />
        <asp:TemplateField HeaderText="Hình ảnh" SortExpression="HinhAnh">
            <EditItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("HinhAnh","~/{0}") %>' Width="155px" />
                <asp:FileUpload ID="FUSua" runat="server" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:FileUpload ID="FUThem" runat="server" />
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("HinhAnh") %>'></asp:Label>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("HinhAnh","~/{0}") %>' Width="155px" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Mô tả" SortExpression="MoTa">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Height="80px" Text='<%# Bind("MoTa") %>' TextMode="MultiLine" Width="645px"></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Height="80px" Text='<%# Bind("MoTa") %>' TextMode="MultiLine" Width="646px"></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("MoTa") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="NgayDang" HeaderText="Ngày đăng" SortExpression="NgayDang" />
        <asp:CommandField ShowInsertButton="True" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" InsertText="Thêm" NewText="Thêm mới" SelectText="Thêm" UpdateText="Chỉnh sửa" />
    </Fields>
</asp:DetailsView>
</asp:Content>
