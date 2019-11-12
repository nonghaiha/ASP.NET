using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BUS;
using System.Data;
namespace Dulich.page
{
    public partial class home : System.Web.UI.Page
    {
        PublicHomeTour ph = new PublicHomeTour();
        HotelBUS ht = new HotelBUS();
        public void ShowTour() {
            DataList1.DataSource = ph.HienThi();
            DataList1.DataBind();
        }
        public void ShowHotel() {
            DataList2.DataSource = ht.PublicHienThi();
            DataList2.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowTour();
            ShowHotel();
        }
    }
}