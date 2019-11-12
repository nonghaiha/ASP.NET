using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class TourDTO
    {
        int id_, vehicleid_, hotelid_,price_,placeid_;
        string name_, detail_,starttime_,image_;
        string departuretime_;
        public int ID { get { return id_; } set { id_ = value; } }
        public int Price { get { return price_; } set { price_ = value; } }
        public int Vehicle { get { return vehicleid_; } set { vehicleid_ = value; } }
        public int Hotel { get { return hotelid_; } set { hotelid_ = value; } }
        public int Place { get { return placeid_; } set { placeid_ = value; } }
        public string Name { get { return name_; } set { name_ = value; } }
        public string Image { get { return image_; } set { image_ = value; } }
        public string Detail { get { return detail_; } set { detail_ = value; } }
        public string StartTime  { get { return starttime_; } set { starttime_ = value; } }
        public string Departure { get { return departuretime_; } set { departuretime_ = value; } }
    }
}
