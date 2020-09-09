using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebSiteBanDienThoai
{
    public partial class SanPham : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-4VP4UPP\\SQLEXPRESS;Initial Catalog=QuanLyCuaHangBanDienThoai;Integrated Security=True";
            String sql = "Select * from SANPHAM WHERE IDMaSP " + txtTimkiem.Text;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            con.Open();
            da.SelectCommand = cmd;
            
            DataSet ds = new DataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count > 0)
            {
                Label4.Text = "Tìm thấy thành công";
                TextBox3.Text = ds.Tables[0].Rows[0]["IDMaSP"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["TenSP"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["IDNhomSP"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["IDLoaiSP"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0]["GiaTien"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["MauSac"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[0]["HinhAnh"].ToString();
                TextBox10.Text = ds.Tables[0].Rows[0]["MoTa"].ToString();
                TextBox11.Text = ds.Tables[0].Rows[0]["NgayDang"].ToString();
            }else
            {
                Label4.Text = "Tìm thất bại";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";
            }
            con.Close();
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            FileUpload f = (FileUpload)DetailsView1.FindControl("FUThem"); // tìm đến đường dẫn
            // lưu đừng dẫn ảnh vào thư mục 
            if (f.FileName.ToString() != "")
            {
                f.SaveAs(MapPath("~/Images/" + f.FileName));
            }
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            FileUpload f = (FileUpload)DetailsView1.FindControl("FUThem"); // tìm đến đường dẫn
            if (f.FileName.ToString() != "")
            {
                e.Values["HinhAnh"] = "Images/" + f.FileName.ToString(); // lưu đừng dẫn ảnh vào thư mục 
            }
            e.Values["NgayDang"] = DateTime.Now;
        }

        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            FileUpload f = (FileUpload)DetailsView1.FindControl("FUSua"); // tìm đến đường dẫn
            // lưu đừng dẫn ảnh vào thư mục 
            if (f.FileName.ToString() != "")
            {
                f.SaveAs(MapPath("~/Images/" + f.FileName));
            }
        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            FileUpload f = (FileUpload)DetailsView1.FindControl("FUSua"); // tìm đến đường dẫn
            Label lb = (Label)DetailsView1.FindControl("Label3");
            if (f.FileName.ToString() != "")
            {
                e.NewValues["HinhAnh"] = "Images/" + f.FileName.ToString(); // lưu đừng dẫn ảnh vào thư mục 
            }
            else
                e.OldValues["HinhAnh"] = lb.Text;
            e.NewValues["NgayDang"] = DateTime.Now;
        }


    }
}