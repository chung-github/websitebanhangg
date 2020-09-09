using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebSiteBanDienThoai.ADO.NET
{
    public class GioHangDB
    {
        string con = ConfigurationManager.ConnectionStrings["QuanLyCuaHangBanDienThoaiConnectionString"].ToString(); //Về sau ôg nên dùng cái này, chỉ cần sửa connectionstring trong webconfig là đc
        public DataTable GetGioHang(string tenDangNhap) //Lấy các bản ghi trong sqlGioHang có cùng tendangnhap
        {
            SqlConnection cnn = new SqlConnection(con); //Tạo kết nối đến server
            cnn.Open(); //Mở kết nối
            SqlCommand cmd = new SqlCommand("spGetGioHang", cnn); // KHai báo sql commad thực thi procedure spGetGioHang
            cmd.CommandType = System.Data.CommandType.StoredProcedure; //Gán command type là storedProcedure
            cmd.Parameters.AddWithValue("@TenDangNhap", tenDangNhap);// Truyền giá trị tên đăng nhập vào procedure
            SqlDataAdapter adpter = new SqlDataAdapter(cmd); // Khai báo adapter sử dụng câu lệnh sql là cmd
            DataTable dt = new DataTable();
            adpter.Fill(dt); //Truyền các bản ghi nhận đc vào dt
            cnn.Close(); //Đống kết nối
            return dt;
        }
        public bool InsertGioHang(string tenDangNhap, int maSP)
        {
            SqlConnection cnn = new SqlConnection(con);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("spInsertGioHang", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TenDangNhap", tenDangNhap);
            cmd.Parameters.AddWithValue("@MaSP", maSP);
            int n = cmd.ExecuteNonQuery();
            cnn.Close();
            if (n > 0)
                return true;
            else return false;
        }

        public bool DeleteGioHang(string tenDangNhap, int maSP)
        {
            SqlConnection cnn = new SqlConnection(con);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("spDeleteGioHang", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TenDangNhap", tenDangNhap);
            cmd.Parameters.AddWithValue("@MaSP", maSP);
            int n = cmd.ExecuteNonQuery();
            cnn.Close();
            if (n > 0)
                return true;
            else return false;
        }

        public bool UpdateSoluong(string tenDangNhap, int maSP, int soLuong)
        {
            SqlConnection cnn = new SqlConnection(con);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("spUpdateSoLuong", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TenDangNhap", tenDangNhap);
            cmd.Parameters.AddWithValue("@MaSP", maSP);
            cmd.Parameters.AddWithValue("@SoLuong", soLuong);
            int n = cmd.ExecuteNonQuery();
            cnn.Close();
            if (n > 0)
                return true;
            else return false;
        }
    }
}