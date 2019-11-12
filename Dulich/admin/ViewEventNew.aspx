<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewEventNew.aspx.cs" Inherits="Dulich.admin.ViewEventNew" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center;color:darkblue">
                    List Tour
                </h1>
                <p style="text-align:center">
                    <a href="eventnew.aspx">Quay lại</a>
                </p>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" 
                Width="100%" DataKeyNames="id">
                <AlternatingRowStyle BackColor="White"  />
                <Columns>
                    <asp:TemplateField HeaderText="Thông tin tin tức">
                        <ItemTemplate>
                            <asp:Image Width="150px" ImageUrl='<%# Eval("image") %>' runat="server" />
                            <h2>
                                <%# Eval("title") %>
                            </h2>
                            <p>
                                <%# Eval("detail") %>
                            </p>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <b>Tiêu đề</b><br />
                            <asp:TextBox ID="txttitle" runat="server" Text='<%#Bind("title") %>' Width="98%"></asp:TextBox>
                            <b>Chi tiết:</b><br />
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%#Bind("detail") %>' Width="98%" TextMode="MultiLine" Rows="10"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="true" CancelText="Hủy" EditText="Sửa" HeaderText="Sửa" UpdateText="Lưu" />
                    <asp:CommandField ShowDeleteButton="true" HeaderText="Xóa" DeleteText="Xóa" />
                    </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QLDulichConnectionString %>" 
                DeleteCommand="DELETE FROM [event_news] WHERE [id] = @id" 
                InsertCommand="INSERT INTO [event_news] ([image], [title], [detail]) VALUES (@image, @title, @detail)" 
                SelectCommand="SELECT * FROM [event_news]" 
                
                UpdateCommand="UPDATE [event_news] SET [title] = @title, [detail] = @detail WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="detail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="detail" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
