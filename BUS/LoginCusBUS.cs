using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using DTO;
using System.Data;
namespace BUS
{
    public class LoginCusBUS
    {
        LoginCusDAL log = new LoginCusDAL();
        public bool CheckLogBUS(string email, string pass)
        {
            if (log.CheckLog(email, pass))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
