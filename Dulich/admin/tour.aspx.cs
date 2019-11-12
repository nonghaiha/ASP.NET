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
    public partial class tour : System.Web.UI.Page
    {
        TourDTO dt = new TourDTO();
        TourBUS t = new TourBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtid.Enabled = false;
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewtour.aspx");
        }
        private void SaveFileUpLoad() {
            string strFileAnh = "";
            if (FileUpload1.FileName != "") {
                strFileAnh = Server.MapPath("../admin/image/tour/" + FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(strFileAnh);
            }
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (txtname.Text == " " || txtprice.Text == "" || txtstime.Text == "" || txtdtime.Text == "" || DropDownListPlace.SelectedValue == null || DropDownListVehicle.SelectedValue == null || DropDownListHotel.SelectedValue == null || txtdetail.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập đầy đủ thông tin')</script>");
            }
            else
            {
                dt.Name = txtname.Text;
                dt.Price = Int32.Parse(txtprice.Text);
                dt.StartTime = txtstime.Text;
                dt.Departure = txtdtime.Text;
                dt.Vehicle = Int32.Parse(DropDownListVehicle.SelectedValue);
                dt.Hotel = Int32.Parse(DropDownListHotel.SelectedValue);
                dt.Place = Int32.Parse(DropDownListPlace.SelectedValue);
                dt.Image = FileUpload1.FileName;
                dt.Detail = txtdetail.Text;
                t.ThemTour(dt.Name, dt.Price, dt.StartTime, dt.Departure, dt.Vehicle, dt.Hotel, dt.Place,dt.Image, dt.Detail);
                SaveFileUpLoad();
                Response.Write("<script>alert('Thêm thành công')</script>");
                Response.Redirect("viewtour.aspx");
            }
                
        }

        protected void btnNhaplai_Click(object sender, EventArgs e)
        {
            txtname.Text = "";
            txtprice.Text = "";
            txtstime.Text = "";
            txtdtime.Text = "";
            txtdetail.Text = "";
        }
    }
}