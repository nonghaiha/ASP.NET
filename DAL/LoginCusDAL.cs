using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
namespace DAL
{
    public class LoginCusDAL : DBAccess
    {
        public bool CheckLog(string user, string pass)
        {
            getConnect();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * from customer where email=@email_ and password=@password_";
            cmd.Connection = conn;
            SqlParameter[] arrParam = new SqlParameter[2];
            arrParam[0] = new SqlParameter("@email_", SqlDbType.NVarChar);
            arrParam[1] = new SqlParameter("@password_", SqlDbType.NVarChar);
            cmd.Parameters.Add(arrParam[0]);
            cmd.Parameters.Add(arrParam[1]);
            arrParam[0].Value = user;
            arrParam[1].Value = pass;
            SqlDataReader Reader = cmd.ExecuteReader();
            if (Reader.Read())
            {
                conn.Close();
                return true;
            }
            else
            {
                conn.Close();
                return false;
            }

        }
    }
}
