using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using DAL;
using System.Data;
namespace BUS
{
    public class PublicHomeTour
    {
        DBAccess cn = new DBAccess();
        public DataTable HienThi() {
            string sql = "select top 9 * from tour order by id asc";
            DataTable dt = new DataTable();
            dt = cn.getTable(sql);
            return dt;
        }
    }
}
