<%@ Page Title="" Language="C#" MasterPageFile="~/admin/backend.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="Dulich.admin.category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <form runat="server">
    <h2 style="text-align:center;">
    Category Place
    </h2>
    <table style="width: 500px; margin:0 auto;" border="1" class="table-1">
        <tr>
            <td>
                ID:
            </td>
            <td>
                <asp:TextBox ID="txtcatid" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Name:
            </td>
            <td>
                <asp:TextBox ID="txtcatname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnNhaplai" runat="server" Text="Nhập lại" Width="20%" 
                    onclick="btnNhaplai_Click" />
                <asp:Button ID="btnThem" runat="server" Text="Thêm" Width="20%" 
                    onclick="btnThem_Click" />
                <asp:Button ID="btnSua" runat="server" Text="Sửa" Width="20%" 
                    onclick="btnSua_Click"/>
                <asp:Button ID="btnXoa" runat="server" Text="Xóa" Width="20%" 
                    onclick="btnXoa_Click"/>
            </td>
        </tr>  
    </table>
    <h3 style="text-align:center">
    List Place
    </h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:CommandField SelectText="Chọn dòng" ShowSelectButton="True" />
        </Columns>

    </asp:GridView>
    </form>
</asp:Content>