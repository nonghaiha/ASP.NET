using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace Dulich.admin
{
    public partial class ordertour : System.Web.UI.Page
    {
        OrderTourAdminBUS orAdmin = new OrderTourAdminBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = orAdmin.HienThi();
            GridView1.DataBind();
        }
    }
}