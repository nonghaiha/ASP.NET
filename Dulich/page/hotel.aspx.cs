using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace Dulich.page
{
    public partial class hotel : System.Web.UI.Page
    {
        HotelBUS ht = new HotelBUS();
        public void Show() {
            DataList1.DataSource = ht.HienThi();
            DataList1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Show();
        }
    }
}