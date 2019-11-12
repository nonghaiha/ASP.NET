using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace Dulich.admin
{
    public partial class categoryhotel : System.Web.UI.Page
    {
        HotelBUS hotel=new HotelBUS();
        HotelDTO dt=new HotelDTO();
        public void Show(){
            GridView1.DataSource=hotel.HienThi();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Show();
            txtidcat.Enabled=false;
        }
        private void SaveFileUpload() {
            string strFileAnh;
            if (FileUpload1.FileName != "") {
                strFileAnh = Server.MapPath("../admin/image/hotel/" + FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(strFileAnh);
            }
        }
        private void Xoatext() {
            txtidcat.Text = "";
            txtnamecat.Text = "";
            txtdetail.Text = "";
            txtnamecat.Focus();
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (txtnamecat.Text == "" && txtdetail.Text == "")
            {
                Response.Write("<script>alert('Bạn phải nhập đầy đủ thông tin')</script>");
            }
            else
            {
                dt.Name = txtnamecat.Text;
                dt.Image = FileUpload1.FileName;
                dt.Detail = txtdetail.Text;
                hotel.ThemHotel(dt.Name, dt.Detail, dt.Image);
                SaveFileUpload();
                Show();
                Response.Write("<script>alert('Thêm thành công')</script>");
                Xoatext();
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            dt.ID = Int32.Parse(txtidcat.Text);
            dt.Name = txtnamecat.Text;
            dt.Detail = txtdetail.Text;
            dt.Image = FileUpload1.FileName;
            hotel.SuaHotel(dt.ID,dt.Name, dt.Detail,dt.Image);
            Show();
            Response.Write("<script>alert('Sửa thành công')</script>");
            Xoatext();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = GridView1.SelectedIndex;
            txtidcat.Text = GridView1.Rows[index].Cells[0].Text;
            txtnamecat.Text = GridView1.Rows[index].Cells[1].Text;
            txtdetail.Text = GridView1.Rows[index].Cells[2].Text;
            
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            dt.ID = Int32.Parse(txtidcat.Text);
            hotel.XoaHotel(dt.ID);
            Show();
            Response.Write("<script>alert('Xóa thành công')</script>");
            Xoatext();
        }

        protected void btnNhaplai_Click(object sender, EventArgs e)
        {
            Xoatext();
        }
    }
}