<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
   <link href="css/signup.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 202px;
        }
        .auto-style3 {
            width: 122px;
        }
        .auto-style4 {
            width: 122px;
            height: 43px;
        }
        .auto-style5 {
            height: 43px;
        }
    </style>
</head>
    <center>
        <h1> New Registration </h1>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" border="10">
            <tr>
                <td class="auto-style3">Username </td>
                <td>
                    <asp:TextBox ID="T1" runat="server" placeholder="Enter UserId"></asp:TextBox>
                      <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Create " Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="T2" runat="server" placeholder="Enter Password" ></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Text="Cancle"  Height="40px" Width="82px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                

            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
