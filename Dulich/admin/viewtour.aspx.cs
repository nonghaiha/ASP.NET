using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace Dulich.admin
{
    public partial class viewtour : System.Web.UI.Page
    {
        TourBUS tour = new TourBUS();
        public void Show() {
            GridView2.DataSource = tour.HienThi();
            GridView2.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}