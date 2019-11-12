<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Dulich.page.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
        <link rel="stylesheet" type="text/css" href="../public/css/Login3.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<img src="../public/Image/imglogin/thapeiffel.jpg" alt="Background Login" style="width: 100%">
	<div class="Login-box">
		<h1>Login</h1>
		<form id="form1" method="POST" runat="server">
			<div class="textbox">
				<i class="fa fa-user" aria-hidden="true"></i>
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
			</div>
			<div class="textbox">
				<i class="fa fa-lock" aria-hidden="true"></i>
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
			</div>
        <asp:Button ID="btnLogin" runat="server" Text="Sign in" onclick="btnLogin_Click" />
		</div>
     </form>
</body>
</html>
