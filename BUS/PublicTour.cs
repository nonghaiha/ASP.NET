using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using DAL;
using System.Data;
namespace BUS
{
    public class PublicTour
    {
        DBAccess cn=new DBAccess();
        public DataTable HienThi() {
            string sql = "select tour.id,tour.name,price,start_time,departure_time,vehicle.name as vename,hotel.name as honame,hotel.image as hoimage,place.name as pname,tour.image,tour.detail from tour inner join vehicle on tour.vehicle_id=vehicle.id inner join hotel on tour.hotel_id=hotel.id inner join place on tour.place_id=place.id";
            DataTable dt = new DataTable();
            dt = cn.getTable(sql);
            return dt;
        }
        
    }
}
