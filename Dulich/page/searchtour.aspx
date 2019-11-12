<%@ Page Title="" Language="C#" MasterPageFile="~/page/FrontEnd.Master" AutoEventWireup="true" CodeBehind="searchtour.aspx.cs" Inherits="Dulich.page.searchtour" %>
<asp:Content ID="Content2" ContentPlaceHolderID="main_body" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" Width="100%">
        <ItemTemplate>
            <table class="myBox2">
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
                        Giá:
                        <asp:Literal ID="Literal2" runat="server" Text='<%# String.Format("{0:000,0 đ}",Eval("price")) %>'></asp:Literal><br />
                        Thời gian:
                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("start_time") %>'></asp:Literal><br />
                        <br />
                    </td>
                </tr>
                
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
