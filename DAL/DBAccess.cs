using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
namespace DAL
{
    public class DBAccess
    {
        static protected SqlConnection conn = null;
        public SqlConnection getDB() {
            return new SqlConnection(@"Data Source=ADMINISTRATOR\SQLEXPRESS;Initial Catalog=QLDulich;Persist Security Info=True;User ID=sa;Password=123");
            
        }
        public void getConnect() {
            if (conn == null) {
                conn = getDB();
            }
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
        }
        public DataTable getTable(string sql) {
            SqlConnection conn = getDB();
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return (dt);
        }
        public void ExecuteNonQuery(string sql) {
            SqlConnection conn = getDB();
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cmd.Clone();
        }
    }
}
