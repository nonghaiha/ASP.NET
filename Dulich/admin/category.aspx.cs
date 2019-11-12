using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using DTO;
using BUS;
namespace Dulich.admin
{
    public partial class category : System.Web.UI.Page
    {
        PlaceDTO lopdt = new PlaceDTO();
        PlaceBUS bus = new PlaceBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            Show();
            txtcatid.Enabled = false;
        }
        public void Show() {
            GridView1.DataSource = bus.HienThi();
            GridView1.DataBind();
        }
        protected void btnNhaplai_Click(object sender, EventArgs e)
        {
            txtcatid.Text = "";
            txtcatname.Text = "";
            txtcatname.Focus();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (txtcatname.Text == null) {
                Response.Write("<script>alert('Không được bỏ trống')</script>");
            }
            else{
                lopdt.Name = txtcatname.Text;
                bus.ThemPlace(lopdt.Name);
                Show();
                Response.Write("<script>alert('Thêm thành công')</script>");
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            lopdt.ID = Int32.Parse(txtcatid.Text);
            lopdt.Name = txtcatname.Text;
            bus.SuaPlace(lopdt.ID,lopdt.Name);
            Show();
            Response.Write("<script>alert('Sửa thành công')</script>");
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            lopdt.ID = Int32.Parse(txtcatid.Text);
            bus.XoaPlace(lopdt.ID);
            Show();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int dong = GridView1.SelectedIndex;
            txtcatid.Text = GridView1.Rows[dong].Cells[0].Text;
            txtcatname.Text = GridView1.Rows[dong].Cells[1].Text;
            txtcatname.Text = "";
        }
    }
}