<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>staff_ Detail</title>
    <link rel="stylesheet" href="css/staff.css" />
</head>
    <center>
        <h1> Staff_Save_Record </h1>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [staff]"></asp:SqlDataSource>
    
        <table class="auto-style1" border="25">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Staff ID"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="T1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="T2" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="T3" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Allsearch" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="T4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Psearch" OnClick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Phone"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="T5" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="T6" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Role ID"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="T7" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="stid" HeaderText="Staff ID" SortExpression="stid" />
                <asp:BoundField DataField="sfnm" HeaderText="Staff First Name" SortExpression="sfnm" />
                <asp:BoundField DataField="slnm" HeaderText="Staff Last Name" SortExpression="slnm" />
                <asp:BoundField DataField="sadd" HeaderText="Staff Address" SortExpression="sadd" />
                <asp:BoundField DataField="sphone" HeaderText="Staff Phone" SortExpression="sphone" />
                <asp:BoundField DataField="semail" HeaderText="Staff Email" SortExpression="semail" />
                <asp:BoundField DataField="srole" HeaderText="Role ID" SortExpression="srole" />
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