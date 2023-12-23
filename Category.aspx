<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>category_Detail</title>
  <link href="css/categoty.css" rel="stylesheet" />
</head>
    <center>
        <h1>Category_Save_Record</h1>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" border="25">
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Text="Category ID"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Text="Category Name"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T2" runat="server" onkeypress="return allowonlyalpa() "></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label3" runat="server" Text="Description" ></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T3" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="2">&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" style="margin-left: 0px;" Height="35px" Width="63px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" Height="37px" Width="68px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Button ID="Button3" runat="server" Text="Allsearch" OnClick="Button3_Click" Height="40px" Width="138px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Psearch" OnClick="Button4_Click" Height="38px" Width="105px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="156px"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
                <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                <asp:BoundField DataField="descl" HeaderText="descl" SortExpression="descl" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
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
        if (charCode == 32)
            return true;
        else {
            alert("Please enter only Alphabets");
            return false;
        }
    }


    </script>