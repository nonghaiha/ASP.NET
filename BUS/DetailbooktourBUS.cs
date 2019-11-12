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
    public class DetailbooktourBUS
    {
        OrderDetailDTO bt = new OrderDetailDTO();
        DBAccess cn = new DBAccess();
        public DataTable HienThi() {
            string sql = "select id from book_tour";
            DataTable dt = new DataTable();
            dt = cn.getTable(sql);
            return dt;
        }
        public void Them(int tourid, int booktourid, int quantity, int price) {
            string sql = "INSERT INTO book_tour_detail values('" + tourid + "','" + booktourid + "','" + quantity + "','" + price + "')";
            cn.ExecuteNonQuery(sql);
        }
    }
}
