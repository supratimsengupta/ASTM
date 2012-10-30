<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASTM.Login.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>ASTM Login</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Abel' rel='stylesheet' type='text/css'>
<link href="../style.css" rel="stylesheet" type="text/css" media="screen" />
    <style type="text/css">
        .auto-style1
        {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="Form1" runat="server">
<div id="wrapper">
	<div id="header-wrapper">
		
		<div id="banner">
			<div class="content">
                <table width="100%">
                    <tr>
                        <td align="center">
                                <asp:Image ID="Image1" runat="server" Height="180px" Width="200px" ImageUrl="~/Images/astm.png" /> 
                        </td>
                    </tr>
                    <tr>
                        <td>
                                

                            <table align="center" style="width: 50%;">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td><strong>User Name</strong></td>
                                    <td>
                                        <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td><strong>Password</strong></td>
                                    <td>
                                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Button ID="btnLogin" runat="server" CssClass="comments" 
                                            OnClick="btnLogin_Click" Text="Login" />
                                        <asp:Button ID="btnCancel" runat="server" CssClass="comments" 
                                            OnClick="btnCancel_Click" Text="Cancel" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><span class="auto-style1">Remember Me!</span> <span class="auto-style1">Forget 
                                        Password?</span></td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                                

                        </td>
                    </tr>
                </table>
                

			</div>
		</div>
	</div>
	<!-- end #header -->
	
	<div id="page">
		<!-- end #sidebar -->
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page --> 
</div>
<div id="footer">
	<p>Copyright (c) 2012 ASTM.COM. All rights reserved.</p>
</div>
<!-- end #footer -->
        </form>
</body>
</html>
