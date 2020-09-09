<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="WebSiteBanDienThoai.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 111px">Tên đăng nhập</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 26px; width: 111px">Mật khẩu</td>
                        <td style="height: 26px">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 111px">Email</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 111px">Họ tên</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 111px">Số điện thoại</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 111px">Địa chỉ</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 111px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Đăng ký" Width="78px" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Hủy" Width="85px" />
                        </td>
                    </tr>
                </table>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
