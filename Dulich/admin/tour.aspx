<%@ Page Title="" Language="C#" MasterPageFile="~/admin/backend.Master" AutoEventWireup="true" CodeBehind="tour.aspx.cs" Inherits="Dulich.admin.tour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <form runat="server">
        <div class="col-md-11">
            <table class="table-1 text-center" width=100% border="1">
                <tr>
                    <td>ID:</td>
                    <td>
                        <asp:TextBox ID="txtid" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td>Hotel:</td>
                    <td>
                        <asp:DropDownList ID="DropDownListHotel" runat="server" Width="100%" 
                            DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="id">
                        </asp:DropDownList>
                    </td>
                    
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" Width="100%" Height="20px"></asp:TextBox>
                    </td>
                    <td>Start Time:</td>
                    <td>
                        <asp:TextBox ID="txtstime" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td>Price:</td>
                    <td>
                        <asp:TextBox ID="txtprice" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td>Departure Time:</td>
                    <td>
                        <asp:TextBox ID="txtdtime" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                <td>Place:</td>
                    <td>
                        <asp:DropDownList ID="DropDownListPlace" runat="server" Width="100%" 
                            DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id">
                        </asp:DropDownList>
                    
                    </td>
                    <td rowspan="2">Image:</td>
                    <td rowspan="2">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Vehicle:</td>
                    <td>
                        <asp:DropDownList ID="DropDownListVehicle" runat="server" Width="100%" 
                            DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="id">
                        </asp:DropDownList>
                </tr>
                <tr>
                    <td>
                        Detail:
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtdetail" runat="server" TextMode="MultiLine" Height="100px" Width="100%"></asp:TextBox>
                    </td>
                </tr> 
                <tr>
                    <td colspan="4">
                        <asp:Button ID="btnNhaplai" runat="server" Text="Nhập lại"  Width="15%" 
                            onclick="btnNhaplai_Click"/>
                        <asp:Button ID="btnThem" runat="server" Text="Thêm"  Width="15%" 
                            onclick="btnThem_Click"/>
                        <asp:Button ID="btnView" runat="server" Text="View"  Width="15%" 
                            onclick="btnView_Click"/>
                    </td>
                </tr>
            </table> 
        </div>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLDulichConnectionString %>" 
        SelectCommand="SELECT * FROM [place]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:QLDulichConnectionString %>" 
    SelectCommand="SELECT * FROM [hotel]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLDulichConnectionString %>" 
        SelectCommand="SELECT * FROM [vehicle]"></asp:SqlDataSource>
</asp:Content>
