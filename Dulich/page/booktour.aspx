<%@ Page Title="" Language="C#" MasterPageFile="~/page/FrontEnd.Master" AutoEventWireup="true" CodeBehind="booktour.aspx.cs" Inherits="Dulich.page.booktour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <h3 class="title-1">
        Đặt tour
    </h3>
    <div class="clearfix">
    </div>
    <div style="margin-left:15px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Width="600px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
            BorderWidth="1px" CellPadding="3" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Tour ID" />
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:CommandField SelectText="Mua tour" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </div>
    <br />
    <div class="col-md-8">
        <table class="table-1" border="1" width=600px">
            <tr>
                <td>
                    ID:
                </td>
                <td>
                    <asp:TextBox ID="txtid" runat="server" Width="95%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Price:
                </td>
                <td>
                    <asp:TextBox ID="txtprice" runat="server" Width="95%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Name:
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Width="95%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Email:
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" Width="95%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Phone:
                </td>
                <td>
                    <asp:TextBox ID="txtphone" runat="server" Width="95%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Address:
                </td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server" Width="95%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Quantity:
                </td>
                <td>
                    <asp:TextBox ID="txtquantity" runat="server" Width="95%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    Tổng tiền: <asp:TextBox ID="txttongtien" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                        <asp:Button ID="btntongtien" runat="server" Text="Tổng tiền" Width="15%" onclick="btntongtien_Click" 
                          />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:right">
                        <asp:Button ID="btnContinue" runat="server" Text="Đăng ký thông tin" Width="30%" 
                        onclick="btnContinue_Click"  />
                </td>
            </tr>
        </table>
    </div>
    <div class="col-md-4">
        <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table class="myBox2" style="margin-left:80px; margin-top:-5px; background-color:#f1c40f">
                <tr>
                    <td style="width: 100%;" colspan="2">
                        <h4>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "detailtour.aspx?Id=" + Eval("id").ToString() %>'
                                ImageUrl='<%# Eval("image") %>' ToolTip="Xem chi tiet" Width="100px">
                            </asp:HyperLink>
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td class="name" colspan="2">
                        <h4 style:>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "detailtour.aspx?Id=" +Eval("id").ToString() %>'
                                Text='<%# Eval("name") %>' ToolTip="Xem chi tiet">
                            </asp:HyperLink>
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td class="name">
                        Tour ID:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label><br />
                        Giá:
                        <asp:Label ID="Label2" runat="server" Text='<%# String.Format("{0:000,0 đ}",Eval("price")) %>'></asp:Label><br />
                        Thời gian:
                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("start_time") %>'></asp:Literal><br />
                        Thời gian khởi hành:
                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("departure_time") %>'></asp:Literal><br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
