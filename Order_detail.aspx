<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order_detail.aspx.cs" Inherits="Order_detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Order's_Detail</title>
   <link rel="stylesheet" href="css/order_detail.css" />
   
</head>
    <center>
        <h1>Order's_Save_Record</h1>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style4" border="25">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Order ID"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="T1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Unit Price"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="T2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Size"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="T3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="T4" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Discount"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="T5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Total"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="T6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Date"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="T7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Product ID"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="T8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="Order ID"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="T9" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    &nbsp;<asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" Height="40px" Width="84px" />
                &nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Allsearch" OnClick="Button3_Click" Height="37px" Width="141px" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="New" Height="35px" Width="71px" />
                &nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Psearch" OnClick="Button4_Click" Height="35px" Width="125px" />
                &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ordid" HeaderText="ordid" SortExpression="ordid" />
                <asp:BoundField DataField="ordprice" HeaderText="ordprice" SortExpression="ordprice" />
                <asp:BoundField DataField="ordsize" HeaderText="ordsize" SortExpression="ordsize" />
                <asp:BoundField DataField="ordqty" HeaderText="ordqty" SortExpression="ordqty" />
                <asp:BoundField DataField="orddist" HeaderText="orddist" SortExpression="orddist" />
                <asp:BoundField DataField="ordtot" HeaderText="ordtot" SortExpression="ordtot" />
                <asp:BoundField DataField="orddt" HeaderText="orddt" SortExpression="orddt" />
                <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
                <asp:BoundField DataField="ordidf" HeaderText="ordidf" SortExpression="ordidf" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [order_detail]"></asp:SqlDataSource>
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