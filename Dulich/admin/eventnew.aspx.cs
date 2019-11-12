using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using DTO;
using BUS;
using System.Data;
namespace Dulich.admin
{
    public partial class eventnew : System.Web.UI.Page
    {
        Event_NewsDTO dt = new Event_NewsDTO();
        Event_NewsBUS en = new Event_NewsBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtIdNew.Enabled = false;
        }

        protected void btnNhapLai_Click(object sender, EventArgs e)
        {
            txtdetail.Text = "";
            txttitle.Text = "";
            txttitle.Focus();
        }
        public void SaveFileUpLoad() {
            string strFile = "";
            if (FileUpload1.FileName != "") {
                strFile = Server.MapPath("../admin/image/news/" + FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(strFile);
            }
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (txttitle.Text == "" || txtdetail.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập đủ thông tin')</script>");
            }
            else {
                dt.Title = txttitle.Text;
                dt.Detail = txtdetail.Text;
                dt.Image = FileUpload1.FileName;
                en.ThemEventNews(dt.Image,dt.Title, dt.Detail);
                SaveFileUpLoad();
                Response.Write("<script>alert('Thêm thành công')</script>");
            }
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewEventNew.aspx");
        }
    }
}