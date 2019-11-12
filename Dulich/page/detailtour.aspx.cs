using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DAL;
namespace Dulich.page
{
    public partial class detailtour : System.Web.UI.Page
    {
        DBAccess cn = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            int ID = Int32.Parse(Request.QueryString["Id"].ToString());
            string sql = "select tour.id,tour.name,price,start_time,departure_time,vehicle.name as vename,hotel.name as honame,hotel.image as hoimage,place.name as pname,tour.image,tour.detail from tour inner join vehicle on tour.vehicle_id=vehicle.id inner join hotel on tour.hotel_id=hotel.id inner join place on tour.place_id=place.id where tour.id='" + ID + "'";
            DataTable dt = new DataTable();
            dt = cn.getTable(sql);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}