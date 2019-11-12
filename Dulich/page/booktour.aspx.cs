using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
using DAL;
using System.Data;
namespace Dulich.page
{
    public partial class booktour : System.Web.UI.Page
    {
        OrderDTO dt = new OrderDTO();
        OrderBUS or = new OrderBUS();
        DBAccess cn = new DBAccess();
        DetailbooktourBUS detail = new DetailbooktourBUS();
        OrderDetailDTO order = new OrderDetailDTO();
        protected void Page_Load(object sender, EventArgs e)
        {
            int ID = Int32.Parse(Request.QueryString["Id"].ToString());
            string sql = "select tour.id,tour.name,price,start_time,departure_time,vehicle.name as vename,hotel.name as honame,hotel.image as hoimage,place.name as pname,tour.image,tour.detail from tour inner join vehicle on tour.vehicle_id=vehicle.id inner join hotel on tour.hotel_id=hotel.id inner join place on tour.place_id=place.id where tour.id='" + ID + "'";
            DataTable dt = new DataTable();
            dt = cn.getTable(sql);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            if (txtname.Text == "" || txtemail.Text == "" || txtphone.Text == "" || txtaddress.Text == ""||txtquantity.Text=="")
            {
                Response.Write("<script>alert('Thông tin không được bỏ trống')</script>");
            }
            else
            {
                if (txtid.Text == "" || txtprice.Text == "")
                {
                    Response.Write("<script>alert('Mời nhấn nút mua tour để thêm thông tin chi tiết')</script>");
                }
                else
                {
                    dt.Name = txtname.Text;
                    dt.Email = txtemail.Text;
                    dt.Phone = txtphone.Text;
                    dt.Address = txtaddress.Text;
                    order.TourID = int.Parse(txtid.Text);
                    order.Quantity = int.Parse(txtquantity.Text);
                    int num1 = int.Parse(txtquantity.Text);
                    int num2 = int.Parse(txtprice.Text);
                    int tong = num1 * num2;
                    txttongtien.Text = tong.ToString();
                    order.Subtotal = int.Parse(txttongtien.Text);
                    or.ThemOrder(dt.Name, dt.Email, dt.Phone, dt.Address, order.TourID, order.Quantity, order.Subtotal);
                    Response.Write("<script>alert('Đăng ký thành công')</script>");
                    Response.Redirect("detailbooktour.aspx");
                }
            }

        }



        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int dong = GridView1.SelectedIndex;
            txtid.Text = GridView1.Rows[dong].Cells[0].Text;
            txtprice.Text = GridView1.Rows[dong].Cells[1].Text;
        }

        protected void btntongtien_Click(object sender, EventArgs e)
        {
            int num1 = int.Parse(txtquantity.Text);
            int num2 = int.Parse(txtprice.Text);
            int tong = num1 * num2;
            txttongtien.Text = tong.ToString();
        }
    }
}