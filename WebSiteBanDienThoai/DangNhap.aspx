<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="WebSiteBanDienThoai.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>   
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 114px">Tên đăng nhập</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 114px">Mật khẩu</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 114px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Đăng nhập" Width="95px" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Hủy" Width="79px" />
                        </td>
                    </tr>
                </table>
        </ContentTemplate>
    </asp:UpdatePanel>   

            
</asp:Content>
