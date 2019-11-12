<%@ Page Title="" Language="C#" MasterPageFile="~/admin/backend.Master" AutoEventWireup="true" CodeBehind="eventnew.aspx.cs" Inherits="Dulich.admin.eventnew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <form runat="server">
                <div class="col-md-11">
                    <table border="1" width="100%" class="table-1 text-center" >
                        <tr>
                            <td>
                                ID:
                            </td>
                            <td>
                                <asp:TextBox ID="txtIdNew" runat="server" Width="100%"></asp:TextBox>
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
                                Title:
                            </td>
                            <td>
                                <asp:TextBox ID="txttitle" runat="server" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Detail:
                            </td>
                            <td>
                                <asp:TextBox ID="txtdetail" runat="server" TextMode="MultiLine" Rows="10" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="btnNhapLai" runat="server" Text="Nhập lại" Width="15%" 
                                    onclick="btnNhapLai_Click" />
                                <asp:Button ID="btnThem" runat="server" Text="Thêm" Width="15%" 
                                    onclick="btnThem_Click"/>
                                <asp:Button ID="btnView" runat="server" Text="View" Width="15%" 
                                    onclick="btnView_Click"/>
                            </td>
                        </tr>
                    </table>
                </div>
    </form>
</asp:Content>

