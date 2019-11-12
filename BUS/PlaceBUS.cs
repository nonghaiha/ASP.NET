using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using DTO;
using System.Data;
using System.Data.SqlClient;
namespace BUS
{
    public class PlaceBUS
    {
        DBAccess db = new DBAccess();
        PlaceDTO Pl = new PlaceDTO();
        public DataTable HienThi() {
            string sql = "select * from place";
            DataTable dt = new DataTable();
            dt = db.getTable(sql);
            return dt;
        }
        public void ThemPlace(string tendd) {
            string sql = "insert into place(name) values(N'" + tendd + "')";
            db.ExecuteNonQuery(sql);
        }
        public void SuaPlace(int id,string tendd)
        {
            string sql = "update place set name=N'" + tendd + "' where id='" + id + "'";
            db.ExecuteNonQuery(sql);
        }
        public void XoaPlace(int id) {
            string sql = "delete from place where id='" + id + "'";
            db.ExecuteNonQuery(sql);
        }
    }
}
