using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace WebSiteBanDienThoai
{
    public partial class DangKy : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=DESKTOP-4VP4UPP\SQLEXPRESS;Initial Catalog=QuanLyCuaHangBanDienThoai;Integrated Security=True";
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into NGUOISUDUNG" + "(TenDangNhap,MatKhau,Email, HoTen,SDT, DiaChi) values (@TenDangNhap,@MatKhau,@Email,@HoTen,@SDT, @DiaChi)", con);
            cmd.Parameters.AddWithValue("@TenDangNhap", TextBox1.Text);
            cmd.Parameters.AddWithValue("@MatKhau", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@HoTen", TextBox4.Text);
            cmd.Parameters.AddWithValue("@SDT", TextBox5.Text);
            cmd.Parameters.AddWithValue("@DiaChi", TextBox6.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            Label1.Text = "Đã đăng ký thành công tài khoản!";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
    }
}