<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateOrder.aspx.cs" Inherits="Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Order_Detile</title>
 <link href="css/order.css" rel="stylesheet" />
  <center>
</head>
    <h1> Order_Update_Record</h1>
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
                    <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" style="height: 29px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Order Details"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T3" runat="server"></asp:TextBox>
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
                <td>
                      <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MyMenu.aspx">Menu</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ordid" HeaderText="ordid" SortExpression="ordid" />
                <asp:BoundField DataField="date1" HeaderText="date1" SortExpression="date1" />
                <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
                <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
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