using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using BUS;
namespace Dulich.page
{
    public partial class login : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtusername.Text == null && txtpassword.Text == null)
            {
                Response.Write("<script>alert('Username and password not empty')</script>");
            }
            else {
                LoginBUS logacc = new LoginBUS();
                if (logacc.CheckLogBUS(txtusername.Text, txtpassword.Text))
                {
                    Response.Write("<script>alert('Login success')</script>");
                    Response.Redirect("homefe.aspx");
                }
                else {
                    Response.Write("<script>alert('Login Fail')</script>");
                }
            }
        }
    }
}