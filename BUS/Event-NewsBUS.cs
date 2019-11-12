using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using DTO;
using System.Data;
namespace BUS
{
    public class Event_NewsBUS
    {
        DBAccess cn = new DBAccess();
        Event_NewsDTO en = new Event_NewsDTO();
        public DataTable HienThi() {
            string sql = "select * from event_news";
            DataTable dt = new DataTable();
            dt = cn.getTable(sql);
            return dt;
        }
        public void ThemEventNews(string image,string title,string detail) {
            string sql = "insert into event_news(image,title,detail) values('"+image+"',N'" + title + "',N'" + detail + "')";
            cn.ExecuteNonQuery(sql);
        }
        public void SuaEventNews(int id,string title, string detail)
        {
            string sql = "update event_news set title=N'" + title + "',detail=N'" + detail + "' where id='" + id + "' ";
            cn.ExecuteNonQuery(sql);
        }
        public void XoaEventNews(int id) {
            string sql = "delete from event_news where id='" + id + "'";
        }
    }
}
