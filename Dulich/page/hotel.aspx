<%@ Page Title="" Language="C#" MasterPageFile="~/page/FrontEnd.Master" AutoEventWireup="true" CodeBehind="hotel.aspx.cs" Inherits="Dulich.page.hotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
<h3 class="title-1">
            Khách sạn nổi bật
        </h3>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" DataKeyField="Id" Width="100%">
        <ItemTemplate>
            <table class="myBox2">
                <tr>
                    <td style="width: 100%;" colspan="2">
                        <h4>
                            <asp:HyperLink ID="HyperLink1" runat="server"
                                ImageUrl='<%# Eval("image") %>' ToolTip="Xem chi tiet" Width="100px">
                            </asp:HyperLink>
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td class="name" colspan="2">
                        <h4 style:>
                            <asp:HyperLink ID="HyperLink2" runat="server"
                                Text='<%# Eval("name") %>' ToolTip="Xem chi tiet">
                            </asp:HyperLink>
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td class="name">
                        <b>Địa chỉ:</b>
                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("detail") %>'></asp:Literal><br />
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
