<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteStaff.aspx.cs" Inherits="Staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>staff_ Detail</title>
    <link rel="stylesheet" href="css/staff.css" />
</head>
    <center>
        <h1> Staff_Delete_Record </h1>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Staff ID"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="T1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="New" />
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
                    <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
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
                    <asp:Button ID="Button3" runat="server" Text="Allsearch" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="T4" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Psearch" />
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
                <td class="auto-style4"></td>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="stid" HeaderText="stid" SortExpression="stid" />
                <asp:BoundField DataField="sfnm" HeaderText="sfnm" SortExpression="sfnm" />
                <asp:BoundField DataField="slnm" HeaderText="slnm" SortExpression="slnm" />
                <asp:BoundField DataField="sadd" HeaderText="sadd" SortExpression="sadd" />
                <asp:BoundField DataField="sphone" HeaderText="sphone" SortExpression="sphone" />
                <asp:BoundField DataField="semail" HeaderText="semail" SortExpression="semail" />
                <asp:BoundField DataField="srole" HeaderText="srole" SortExpression="srole" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [staff]"></asp:SqlDataSource>
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