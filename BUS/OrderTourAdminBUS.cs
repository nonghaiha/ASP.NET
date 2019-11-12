using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using DTO;
using System.Data;
namespace BUS
{
    public class OrderTourAdminBUS
    {
        DBAccess cn = new DBAccess();
        public DataTable HienThi() {
            string sql = "select tour.name as tname,tour.image as timage,book_tour.name as bname,book_tour.phone as bphone,book_tour.email as bemail,book_tour.address as aaddress,quantity,subtotal from book_tour_detail join tour on book_tour_detail.tour_id=tour.id join book_tour on book_tour_detail.book_tour_id=book_tour.id";
            DataTable dt = new DataTable();
            dt = cn.getTable(sql);
            return dt;
        }
    }
}
