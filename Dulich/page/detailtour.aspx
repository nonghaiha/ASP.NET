<%@ Page Title="" Language="C#" MasterPageFile="~/page/FrontEnd.Master" AutoEventWireup="true" CodeBehind="detailtour.aspx.cs" Inherits="Dulich.page.detailtour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" Width="100%">
        <ItemTemplate>
            <table class="myBox1">
                <tr>
                    <td>
                        <h2 style="text-align:center;color:#6c5ce7">
                                 <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("name") %>'></asp:Literal>
                            </h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />
                    </td>
                    </tr>
                    <tr>
                    <td class="name1">
                        <b>Giá:</b> <asp:Literal ID="Literal2" runat="server" Text='<%# String.Format("{0:000,0 đ}",Eval("price")) %>'></asp:Literal><br />
                        <b>Thời gian:</b> <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("start_time") %>'></asp:Literal><br />
                        <b>Phương tiện:</b> <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("vename") %>'></asp:Literal><br />
                        <b>Khách sạn:</b> <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("honame") %>'></asp:Literal><br />
                        <b>Khởi Hành:</b> <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("departure_time") %>'></asp:Literal><br />                
                        <b>Chi tiết tour:</b> <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("detail") %>'></asp:Literal><br />
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