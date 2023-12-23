<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Product_Detail</title>
    <link href="css/product.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style10 {
            width: 298px;
        }
        .auto-style11 {
            width: 221px;
        }
    </style>
</head>
    <center>
        <h1> Product_Save_Record</h1>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label1" runat="server" Text="Product ID"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="T1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="T2" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" Height="34px" Width="72px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label3" runat="server" Text="Product Description"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="T3" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Allsearch" OnClick="Button3_Click" />
                    ;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label4" runat="server" Text="Product Unit"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="T4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Psearch" OnClick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label5" runat="server" Text="Product Price"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="T5" runat="server"></asp:TextBox>
                </td>
                <td aria-atomic="False">
                    <asp:TextBox ID="T11" runat="server" Height="24px" Width="93px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label6" runat="server" Text="Product Quantity"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="T6" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label7" runat="server" Text="Product Status" ></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="T7" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label8" runat="server" Text="Other Details"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="T8" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label9" runat="server" Text="Supplier ID"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="T9" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label10" runat="server" Text="Category ID"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="T10" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="pid" HeaderText="Product ID" SortExpression="pid" />
                <asp:BoundField DataField="pnm" HeaderText="Product Name" SortExpression="pnm" />
                <asp:BoundField DataField="pdesc" HeaderText="Product Description" SortExpression="pdesc" />
                <asp:BoundField DataField="punit" HeaderText="Product Unit" SortExpression="punit" />
                <asp:BoundField DataField="pprice" HeaderText="pprice" SortExpression="pprice" />
                <asp:BoundField DataField="pqty" HeaderText="pqty" SortExpression="pqty" />
                <asp:BoundField DataField="pstatus" HeaderText="pstatus" SortExpression="pstatus" />
                <asp:BoundField DataField="pother" HeaderText="pother" SortExpression="pother" />
                <asp:BoundField DataField="sid" HeaderText="sid" SortExpression="sid" />
                <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
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