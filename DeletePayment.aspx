<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeletePayment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment_Detail</title>
    <link rel="stylesheet" href="css/payment.css" />
</head>
    <center>
        <h1> Payment_Delete_Detail</h1>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Bill Number"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="New" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="Payment Type"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="T2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="T3" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Allsearch" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Psearch" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="billno" HeaderText="billno" SortExpression="billno"></asp:BoundField>
                <asp:BoundField DataField="ptype" HeaderText="ptype" SortExpression="ptype"></asp:BoundField>
                <asp:BoundField DataField="other" HeaderText="other" SortExpression="other"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [payment]"></asp:SqlDataSource>
    </form>
</body>
</html>
<script>
    function allowonlyalpa() {

        if (window.event) {
            var charCode = window.event.keyCode;
        }
        else if (e) {
            var charCode = e.which;
        }
        else { return true; }
        if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
            return true;
        else {
            alert("Please enter only Alphabets");
            return false;
        }
    }
    </script>