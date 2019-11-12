<%@ Page Title="" Language="C#" MasterPageFile="~/page/FrontEnd.Master" AutoEventWireup="true" CodeBehind="tour.aspx.cs" Inherits="Dulich.page.tour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" DataKeyField="Id" 
            Width="100%" onselectedindexchanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="myBox">
                    <tr>
                        <td style="width:400px;">
                            <asp:HyperLink ID="HyperLink1" runat="server"
                             NavigateUrl='<%# "detailtour.aspx?Id=" + Eval("id").ToString() %>'
                             ImageUrl='<%# Eval("image") %>'
                             ToolTip="Xem chi tiet" Width="100px">
                             </asp:HyperLink>
                        </td>
                        <td class="name">
                            <h4 style:>
                                 <asp:HyperLink ID="HyperLink2" runat="server"
                                NavigateUrl='<%# "detailtour.aspx?Id=" +Eval("id").ToString() %>'
                                Text='<%# Eval("name") %>'
                                ToolTip="Xem chi tiet">
                                </asp:HyperLink>
                            </h4>
                            Giá: <asp:Literal ID="Literal2" runat="server" Text='<%# String.Format("{0:000,0 đ}",Eval("price")) %>'></asp:Literal><br />
                            Thời gian: <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("start_time") %>'></asp:Literal><br />
                            Phương tiện: <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("vename") %>'></asp:Literal><br />
                            Khách sạn: <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("honame") %>'></asp:Literal><br />
                            <br />
                            <p class="btnBooktour">
                                <a href="detailoder.aspx">Book Tour</a>
                            </p>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Content>
