using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Data;
using DAL;
namespace Dulich.page
{
    public partial class tourplace : System.Web.UI.Page
    {
        DBAccess cn = new DBAccess();
        public void Show() {
            int ID = Int32.Parse(Request.QueryString["place_id"].ToString());
            string sql = "select tour.id,tour.name,price,start_time,departure_time,vehicle.name as vename,hotel.name as honame,hotel.image as hoimage,place.name as pname,tour.image,tour.detail from tour inner join vehicle on tour.vehicle_id=vehicle.id inner join hotel on tour.hotel_id=hotel.id inner join place on tour.place_id=place.id where place_id='" + ID + "'";
            DataTable dt = new DataTable();
            dt = cn.getTable(sql);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Show();
        }
    }
}