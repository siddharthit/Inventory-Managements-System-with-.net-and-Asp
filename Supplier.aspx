<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Supplier.aspx.cs" Inherits="Supplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Supplier_Detail</title>
    <link href="css/suppiler.css" rel="stylesheet" /> 

</head>
    <center>
    <h1> Supplier_Save_Record
    </h1>
<body >
    <form id="form1" runat="server">
        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [supplier]"></asp:SqlDataSource>
        <table border="25" class="auto-style9">
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label1" runat="server" Text="Supplier ID"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="T1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="T2" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style13">
                    
                    <asp:TextBox ID="T3" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
                    s</td>
                <td class="auto-style13">
                    <asp:TextBox ID="T4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label5" runat="server" Text="Fax"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="T5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style13">
                    
                    <asp:TextBox ID="T6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label7" runat="server" Text="Other Details"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="T7" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Save" Width="95px" OnClick="Button2_Click" Height="38px" />
                    <asp:Button ID="Button1" runat="server" Text="New" Width="68px" OnClick="Button1_Click" Height="39px" />
                    
                    <asp:Button ID="Button3" runat="server" Text="Allsearch" Width="105px" OnClick="Button3_Click" Height="44px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Psearch" Width="116px" OnClick="Button4_Click" Height="37px" />
                    
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px"  Width="122px"></asp:TextBox>
&nbsp; </td>
            </tr>
            </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="sid" HeaderText="Supplier ID" SortExpression="sid" />
                <asp:BoundField DataField="snm" HeaderText="Supplier Name" SortExpression="snm" />
                <asp:BoundField DataField="sadd" HeaderText="Supplier Address" SortExpression="sadd" />
                <asp:BoundField DataField="sphone" HeaderText="Supplier Phone" SortExpression="sphone" />
                <asp:BoundField DataField="sfax" HeaderText="Supplier Fax" SortExpression="sfax" />
                <asp:BoundField DataField="semail" HeaderText="Supplier Email" SortExpression="semail" />
                <asp:BoundField DataField="sother" HeaderText="Other Details" SortExpression="sother" />
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
                    <asp:HiddenField ID="HiddenField1" runat="server" />
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