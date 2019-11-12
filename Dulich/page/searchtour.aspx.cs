using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Data;
namespace Dulich.page
{
    public partial class searchtour : System.Web.UI.Page
    {
        DBAccess cn = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            String Name = Request.QueryString["name"].ToString();
            string sql = "select * from tour where name like N'%" + Name + "%'";
            DataTable dt = new DataTable();
            dt = cn.getTable(sql);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}