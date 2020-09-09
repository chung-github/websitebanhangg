using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSiteBanDienThoai.ADO.NET;

namespace WebSiteBanDienThoai
{
    public partial class DangNhap_GioHang : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["QuanLyCuaHangBanDienThoaiConnectionString"].ToString();
        SqlCommand cmd;
        SqlConnection con;
        SqlDataAdapter sda;
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button1.Attributes.Add("AutoPostback", "true");
            con = new SqlConnection(constr);
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM NGUOISUDUNG WHERE TenDangNhap= '" + TextBox1.Text + "'and MatKhau='" + TextBox2.Text + "'";
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds, "NGUOISUDUNG");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["user"] = TextBox1.Text;
                
            }
            else
            {
                Label1.Text = "Đăng nhập không thành công";
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
            if (Request.QueryString["MaSP"] == null) //Đăng nhập từ giỏ hàng
            {
                Response.Redirect("/GioHang.aspx");
            }
            else //Thêm sản phẩm vào giỏ hàng mà chưa đăng nhập
            {
                int maSP = int.Parse(Request.QueryString["MaSP"]);
                GioHangDB db = new GioHangDB();
                bool resutl = db.InsertGioHang(Session["user"].ToString(), maSP);
                Response.Redirect("/GioHang.aspx");
            }


        }
    }
}