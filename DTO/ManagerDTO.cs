using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class ManagerDTO
    {
        string username_, password_;
        public string Username { get { return username_; } set { username_ = value; } }
        public string Password { get { return password_; } set { password_ = value; } }
    }
}
