using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using DAL;
using System.Data;
namespace BUS
{
    public class TourBUS
    {
        DBAccess cn = new DBAccess();
        TourDTO tour = new TourDTO();
        public DataTable HienThi() {
            string sql = "select tour.id,tour.name,price,start_time,departure_time,vehicle.name as vename,hotel.name as honame,hotel.image as hoimage,place.name as pname,tour.image,tour.detail from tour inner join vehicle on tour.vehicle_id=vehicle.id inner join hotel on tour.hotel_id=hotel.id inner join place on tour.place_id=place.id";
            DataTable dt = new DataTable();
            dt = cn.getTable(sql);
            return dt;
        }
        public void ThemTour(string name, int price, string stime, string dtime, int vehicle, int hotel,int place,string image, string detail) {
            string sql = "insert into tour(name,price,start_time,departure_time,vehicle_id,hotel_id,place_id,image,detail) values(N'" + name + "','" + price + "','" + stime + "','" + dtime + "','" + vehicle + "','" + hotel + "','" + place + "','" + "~/admin/image/tour/" + image + "',N'" + detail + "')";
            cn.ExecuteNonQuery(sql);
        }
        public void Suatour(int id,string name, int price, string stime, string dtime, int vehicle, int hotel,int place,string image, string detail) {
            string sql = "update tour set name='" + name + "',price='" + price + "',start_time='" + stime + "',departure_time='" + dtime + "',vehicle_id='" + vehicle + "',hotel_id='" + hotel + "',place_id='" + place + "',image='" + "~/admin/image/tour/" + image + "',detail='" + detail + "' where id='" + id + "'";
            cn.ExecuteNonQuery(sql);
        }
        public void XoaTour(int id) {
            string sql = "delete from tour where id='" + id + "'";
            cn.ExecuteNonQuery(sql);
        }
    }
}
