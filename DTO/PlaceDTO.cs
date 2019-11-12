using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class PlaceDTO
    {
        int id_;
        string name_;
        public int ID { get { return id_; } set { id_ = value; } }
        public string Name { get { return name_; } set { name_ = value; } }
    }
}
