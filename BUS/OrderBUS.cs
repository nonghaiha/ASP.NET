using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using DTO;
using System.Data;
using System.Data;
namespace BUS
{
    public class OrderBUS
    {
        DBAccess cn = new DBAccess();
        OrderDTO or = new OrderDTO();
        public void ThemOrder(string name, string email, string phone, string address,int tourid,int quantity,int subprice)
        {
            string sql = "Declare @mab int INSERT INTO book_tour(name,email,phone,address) VALUES(N'" + name + "','" + email + "','" + phone + "',N'" + address + "') Select @mab=SCOPE_IDENTITY() INSERT INTO book_tour_detail values(@mab,'" + tourid + "','" + quantity + "','" + subprice + "')";
            cn.ExecuteNonQuery(sql);
        }
    }
}
