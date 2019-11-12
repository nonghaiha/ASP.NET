using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class OrderDTO
    {
        int id_;
        string name_, phone_, email_,address_;
        public int ID { get { return id_; } set { id_ = value; } }
        public string Name { get { return name_; } set { name_ = value; } }
        public string Email { get { return email_; } set { email_ = value; } }
        public string Phone { get { return phone_; } set { phone_ = value; } }
        public string Address { get { return address_; } set { address_ = value; } }
    }
}
