using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Providers.Entities;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace WebSiteBanDienThoai
{
    
    public partial class DangNhap : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["QuanLyCuaHangBanDienThoaiConnectionString"].ToString();
        SqlCommand cmd;
        SqlConnection con;
        SqlDataAdapter sda;
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                Response.Write("<script language='javascript'>alert('Bạn đã đăng nhập..!')</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(constr);
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText=  "SELECT * FROM NGUOISUDUNG WHERE TenDangNhap= '"+TextBox1.Text+"'and MatKhau='"+TextBox2.Text+"'";
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds, "NGUOISUDUNG");
            if(ds.Tables[0].Rows.Count > 0)
            {
                Session["user"] = TextBox1.Text;
                Response.Redirect("TrangChu.aspx");

            }else
            {
                Label1.Text = "Đăng nhập không thành công";
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
            
            
        }
    }
}