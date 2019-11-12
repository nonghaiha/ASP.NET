<%@ Page Title="" Language="C#" MasterPageFile="~/page/FrontEnd.Master" AutoEventWireup="true"
    CodeBehind="home.aspx.cs" Inherits="Dulich.page.home" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main_banner" runat="server">
    <div id="carousel-id" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carousel-id" data-slide-to="0" class=""></li>
            <li data-target="#carousel-id" data-slide-to="1" class=""></li>
            <li data-target="#carousel-id" data-slide-to="2" class="active"></li>
        </ol>
        <div class="carousel-inner my-cal">
            <div class="item">
                <a href="tour.aspx"><img data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide" alt="First slide"
                    src="../banner/banner-03.jpg"></a>
            </div>
            <div class="item">
                <a href="tour.aspx"><img data-src="holder.js/900x500/auto/#666:#6a6a6a/text:Second slide" alt="Second slide"
                    src="../banner/banner-11.jpg">s</a>
            </div>
            <div class="item active">
                <a href="tour.aspx"><img data-src="holder.js/900x500/auto/#555:#5a5a5a/text:Third slide" alt="Third slide"
                    src="../banner/banner-16.jpg"></a>
            </div>
        </div>
        <a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left">
        </span></a><a class="right carousel-control" href="#carousel-id" data-slide="next"><span
            class="glyphicon glyphicon-chevron-right"></span></a>
    </div>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <h3 class="title-1">
        Tour Đặc Sắc
    </h3>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" DataKeyField="Id" Width="100%">
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
    <div class="home-image-wrapper">
        <h3 class="title-1">
            Khách sạn nổi bật
        </h3>
        <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" DataKeyField="Id" Width="100%">
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
                        <h4 style="text-align:center">
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
        <p class="Detail-Hotel">
            <a href="hotel.aspx">More Hotel</a>
        </p>
    </div>
</asp:Content>
