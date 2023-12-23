<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
   
<link href="css/login.css" rel="stylesheet" />  

</head>
    <center>        
<body >
      <table>
                <tr height=320>
                </tr>
            </table>
    <form id="form1" runat="server">
    <div> 
        <table class="auto-style1" border="15">
            <h1>Login Pannel</h1>
            <tr>
                    <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="Login ID" onekeypress="allowonlyalpa" Width="144px"></asp:Label>
                    </td>
                <td class="auto-style5">
                    <asp:TextBox ID="T2" runat="server" placeholder="Enter UserId"  Width="151px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="Login Password"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="T1" runat="server" placeholder="Enter Password" Width="154px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" Height="35px" Width="93px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="SignUp" Width="87px" Height="36px" PostBackUrl="~/signup.aspx" />
                    &nbsp;
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
