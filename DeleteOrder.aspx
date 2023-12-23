<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteOrder.aspx.cs" Inherits="Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Order_Detile</title>
 <link href="css/order.css" rel="stylesheet" />
    <center>
</head>
    <h1> Order_Delete_Record </h1>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Order ID"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="New" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Order Details"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T3" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Allsearch" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Customer ID"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Psearch" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="ordid" HeaderText="ordid" SortExpression="ordid" />
                <asp:BoundField DataField="date1" HeaderText="date1" SortExpression="date1" />
                <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
                <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [orders]"></asp:SqlDataSource>
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