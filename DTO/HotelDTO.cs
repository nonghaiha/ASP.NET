using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class HotelDTO
    {
        int id_;
        string name_, detail_, image_;
        public int ID { get { return id_; } set { id_ = value; } }
        public string Name { get { return name_; } set { name_ = value; } }
        public string Detail { get { return detail_; } set { detail_ = value; } }
        public string Image { get { return image_; } set { image_ = value; } }
    }
}
