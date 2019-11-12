using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using DTO;
using System.Data.SqlClient;
using System.Data;
namespace BUS
{
    public class HotelBUS
    {
        DBAccess db = new DBAccess();
        HotelDTO hotel = new HotelDTO();
        public DataTable HienThi() {
            string sql = "select * from hotel";
            DataTable dt = new DataTable();
            dt = db.getTable(sql);
            return dt;
        }
        public DataTable PublicHienThi()
        {
            string sql = "select top 3 * from hotel";
            DataTable dt = new DataTable();
            dt = db.getTable(sql);
            return dt;
        }
        public void ThemHotel(string name, string detail, string image) {
            string sql = "insert into hotel(name,detail,image) values(N'" + name + "',N'" + detail + "','"+"~/admin/image/hotel/" + image + "')";
            db.ExecuteNonQuery(sql);
        }
        public void SuaHotel(int id, string name, string detail, string image) {
            string sql = "update hotel set name=N'" + name + "',detail=N'" + detail + "',image='" + "~/admin/image/hotel/" + image + "' where id='" + id + "'";
            db.ExecuteNonQuery(sql);
        }
        public void XoaHotel(int id) {
            string sql = "delete from hotel where id='" + id + "'";
            db.ExecuteNonQuery(sql);
        }
    }
}
