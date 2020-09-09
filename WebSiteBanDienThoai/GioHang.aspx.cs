using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSiteBanDienThoai.ADO.NET;

namespace WebSiteBanDienThoai
{
    public partial class ThemGioHang : System.Web.UI.Page
    {
        string tenDangNhap;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) //Chỉ thực hiện khi lần đầu tải trang
            {
                if (Session["user"] == null) //THực hiện khi uuer chưa đăng nhập
                    Response.Redirect("/DangNhap_GioHang.aspx"); // Không chuyển đến Trang đăng nhập luôn vì t muốn thêm câu lệnh sau khi đăng nhập thì phải chuyển về GIỏ hàng
                else
                {
                    tenDangNhap = Session["user"].ToString();
                    GioHangDB db = new GioHangDB();
                    DataTable dt = db.GetGioHang(tenDangNhap);
                    gridviewGioHang.DataSource = dt; //Gán nguồn dữ liệu cho gridview
                    gridviewGioHang.DataBind(); //Cập nhật lại dữ liệu cho gridview
                }
               
            }
            
        }

        protected void BtnXoa_Click(object sender, EventArgs e)
        {
          
            GioHangDB db = new GioHangDB();
            tenDangNhap = Session["user"].ToString();
            int maSP = int.Parse(((Button)sender).CommandArgument); //Lấy mã sản phẩm muốn xóa
            db.DeleteGioHang(tenDangNhap, maSP); //Thực hiện procedure xóa sản phẩm
            DataTable dt = db.GetGioHang(tenDangNhap); // Lấy lại table 
            gridviewGioHang.DataSource = dt; //gán lại nguồn dữ liệu cho gridview
            gridviewGioHang.DataBind(); //cập nhật lại gridview

        }

        protected void txtSoLuong_TextChanged(object sender, EventArgs e)
        {
            TextBox tb = sender as TextBox;
            int soLuong = int.Parse(tb.Text);
            int maSP = int.Parse(tb.Attributes["CommandArgument"].ToString());
            GioHangDB db = new GioHangDB();
            tenDangNhap = Session["user"].ToString();
            db.UpdateSoluong(tenDangNhap, maSP, soLuong);
            DataTable dt = db.GetGioHang(tenDangNhap);
            gridviewGioHang.DataSource = dt;
            gridviewGioHang.DataBind();
        }
    }
}