using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using DTO;
using System.Data;
namespace BUS
{
    public class LoginBUS
    {
        LoginDAL log = new LoginDAL();
        public bool CheckLogBUS(string user,string pass)
        {
            if(log.CheckLog(user,pass)){
                return true;     
           }
            else{
                return false;   
            }
        }
    }
}
