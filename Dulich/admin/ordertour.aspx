<%@ Page Title="" Language="C#" MasterPageFile="~/admin/backend.Master" AutoEventWireup="true" CodeBehind="ordertour.aspx.cs" Inherits="Dulich.admin.ordertour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
        <h3 style="text-align:center">
            Danh sách tour được book
        </h3>
        <form id="Form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" GridLines="Vertical" Width="90%">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="tname" HeaderText="Tour Name" 
                    ItemStyle-Width="200px" >
                <HeaderStyle Width="200px" />
<ItemStyle Width="200px"></ItemStyle>
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="timage" HeaderText="Tour Image" ControlStyle-Width="200px">
<ControlStyle Width="200px"></ControlStyle>
                </asp:ImageField>
                <asp:BoundField DataField="bname" HeaderText="Customer Name" />
                <asp:BoundField DataField="bphone" HeaderText="Customer Phone" />
                <asp:BoundField DataField="bemail" HeaderText="Customer Email" />
                <asp:BoundField DataField="aaddress" HeaderText="Customer Address" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="subtotal" HeaderText="Sub Total" 
                    DataFormatString="{0:000,0 đ}" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
             
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QLDulichConnectionString %>" 
            SelectCommand="SELECT * FROM [book_tour_detail]"></asp:SqlDataSource>
    </form>
</asp:Content>
