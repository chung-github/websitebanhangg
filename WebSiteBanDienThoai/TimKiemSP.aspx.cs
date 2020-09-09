using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSiteBanDienThoai.ADO.NET;

namespace WebSiteBanDienThoai
{
    public partial class TimKiemSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SanPham.aspx");
        }

        protected void BtnThemGioHang_Click(object sender, ImageClickEventArgs e)
        {
            int maSP = int.Parse(((ImageButton)sender).CommandArgument);
            if (Session["user"] == null)
                Response.Redirect("/DangNhap_GioHang?MaSP=" + maSP); // Yêu cầu đăng nhập trước khi thêm sản phẩm vào giỏ hàng
            else
            {
                string tenDangNhap = Session["user"].ToString();
                GioHangDB db = new GioHangDB();
                bool resutl = db.InsertGioHang(tenDangNhap, maSP);
                Response.Write("<script language='javascript'>alert('Đã thêm sản phẩm vào giỏ hàng!')</script>");
            }
        }
    }
}