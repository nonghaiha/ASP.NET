<%@ Page Title="" Language="C#" MasterPageFile="~/admin/backend.Master" AutoEventWireup="true" CodeBehind="categoryhotel.aspx.cs" Inherits="Dulich.admin.categoryhotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <form  method="post" runat="server">
    <table style="width: 500px; margin:0 auto;text-align:center;" border="1" class="table-1">
        <tr>
            <td>
                ID:
            </td>
            <td>
                <asp:TextBox ID="txtidcat" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Name:
            </td>
            <td>
                <asp:TextBox ID="txtnamecat" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Image:
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Detail:
            </td>
            <td>
                <asp:TextBox ID="txtdetail" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnNhaplai" runat="server" Text="Nhập lại" Width="20%" 
                    onclick="btnNhaplai_Click" />
                <asp:Button ID="btnThem" runat="server" Text="Thêm" Width="20%" 
                    onclick="btnThem_Click"/>
                <asp:Button ID="btnSua" runat="server" Text="Sửa" Width="20%" 
                    onclick="btnSua_Click"/>
                <asp:Button ID="btnXoa" runat="server" Text="Xóa" Width="20%" 
                    onclick="btnXoa_Click"/>
            </td>
        </tr>
    </table>
    <h3 style="text-align:center">
        List Hotel
    </h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="detail" HeaderText="Detail" />
            <asp:ImageField DataImageUrlField="image" HeaderText="Image" ControlStyle-Width="80"></asp:ImageField>
            <asp:CommandField SelectText="Chọn dòng" ShowSelectButton="True" />
        </Columns>

    </asp:GridView>
    </form>
</asp:Content>
