using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Data;
namespace Dulich.page
{
    public partial class tour : System.Web.UI.Page
    {
        PublicTour ptour = new PublicTour();
        public void Show() {
            DataList1.DataSource = ptour.HienThi();
            DataList1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Show();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
          server control at run time. */
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnBookTour_Click(object sender, EventArgs e)
        {
            Response.Redirect("DetailOrder.aspx");
        }
        
    }
}