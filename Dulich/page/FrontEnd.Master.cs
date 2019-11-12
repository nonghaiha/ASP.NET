using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dulich.page
{
    public partial class FrontEnd : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTimkiem_Click(object sender, EventArgs e)
        {
            string sname = txttimkiem.Text;
            Response.Redirect("searchtour.aspx?name=" +sname);
        }
    }
}