<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewtour.aspx.cs" Inherits="Dulich.admin.viewtour" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Tour</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align:center;color:darkblue">
            List Tour
        </h1>
        <p style="text-align:center">
            <a href="tour.aspx">Quay lại</a>
        </p>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None"  Width="100%"
            BorderWidth="1px" DataSourceID="SqlDataSource1" DataKeyNames="id">
            <Columns>
                <asp:TemplateField HeaderText="Thông tin tour">
                    <ItemTemplate>
                        <h1 style="text-align:center;color:black   ">
                            <%# Eval("name") %>
                        </h1>
                        
                        <p align="justify" style="text-align:left;color:black">
                            <%# Eval("detail") %>
                        </p>
                        <h3 style="color:black">
                           Giá: <%# String.Format("{0:000,0 đ}",Eval("price")) %>
                        </h3>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <b>Name:</b><br />
                        <asp:TextBox ID="txtName" runat="server" Width="98%" Text='<%# Bind("name") %>'></asp:TextBox>
                        <b>Price:</b><br />
                        <asp:TextBox ID="TextBox1" runat="server" Width="98%" Text='<%# Bind("price") %>'></asp:TextBox>
                        <b>Time:</b><br />
                        <asp:TextBox ID="txtstime" runat="server" Width="98%" Text='<%# Bind("start_time") %>'></asp:TextBox>
                        <b>Departure Time:</b><br />
                        <asp:TextBox ID="txtdtime" runat="server" Width="98%" Text='<%# Bind("departure_time") %>'></asp:TextBox>
                        <b>Vehicle:</b><br />
                        <asp:DropDownList ID="DropDownListVehicle" runat="server" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="id">
                        </asp:DropDownList>
                        <br />
                        <b>Hotel:</b><br />
                        <asp:DropDownList ID="DropDownListHotel" runat="server" DataSourceID="SqlDataSource4" DataTextField="name" DataValueField="id">
                        </asp:DropDownList>
                        <br />
                        <b>Vehicle:</b><br />
                        <asp:DropDownList ID="DropDownListPlace" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="id">
                        </asp:DropDownList>
                        <br />
                        <b>Detail:</b><br />
                        <asp:TextBox ID="txtdetail" runat="server" Width="98%" Text='<%# Bind("detail") %>' TextMode="MultiLine" Rows="5"></asp:TextBox>
                    </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hình Ảnh">
                    <ItemTemplate>
                        <asp:Image runat="server" Width="200px" ImageUrl='<%# Eval("image") %>' />
                    </ItemTemplate>
                    </asp:TemplateField>
                <asp:CommandField ShowEditButton="true" CancelText="Hủy" EditText="Sửa" HeaderText="Sửa" UpdateText="Lưu" />
                <asp:CommandField ShowDeleteButton="true" HeaderText="Xóa" DeleteText="Xóa" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <p style="text-align:center"><a href="tour.aspx" style="font-size:16px"> Quay lại</a></p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QLDulichConnectionString %>" 
            DeleteCommand="DELETE FROM [tour] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [tour] ([name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [detail]) VALUES (@name, @price, @start_time, @departure_time, @vehicle_id, @hotel_id, @place_id, @detail)" 
            SelectCommand="SELECT * FROM [tour]" 
            UpdateCommand="UPDATE [tour] SET [name] = @name, [price] = @price, [start_time] = @start_time, [departure_time] = @departure_time, [vehicle_id] = @vehicle_id, [hotel_id] = @hotel_id, [place_id] = @place_id, [detail] = @detail WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="start_time" Type="String" />
                <asp:Parameter Name="departure_time" Type="String" />
                <asp:Parameter Name="vehicle_id" Type="Int32" />
                <asp:Parameter Name="hotel_id" Type="Int32" />
                <asp:Parameter Name="place_id" Type="Int32" />
                <asp:Parameter Name="detail" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="start_time" Type="String" />
                <asp:Parameter Name="departure_time" Type="String" />
                <asp:Parameter Name="vehicle_id" Type="Int32" />
                <asp:Parameter Name="hotel_id" Type="Int32" />
                <asp:Parameter Name="place_id" Type="Int32" />
                <asp:Parameter Name="detail" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QLDulichConnectionString %>" 
            SelectCommand="SELECT * FROM [vehicle]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QLDulichConnectionString %>" 
            SelectCommand="SELECT * FROM [hotel]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QLDulichConnectionString %>" 
            SelectCommand="SELECT * FROM [place]"></asp:SqlDataSource>
    </form>
</body>
</html>
