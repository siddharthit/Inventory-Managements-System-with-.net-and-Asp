<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment_Detail</title>
    <link rel="stylesheet" href="css/payment.css" />
</head>
    <center>
        <h1> Payment_save_Detail</h1>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [payment]"></asp:SqlDataSource>
    
        <table class="auto-style1" border="25">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Bill Number"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Payment Type"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="T2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="T3" runat="server" onkeypress="return allowonlyalpa()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" />
                &nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Allsearch" OnClick="Button3_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Psearch" OnClick="Button4_Click" />
                &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    
    </div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="billno" HeaderText="billno" SortExpression="billno" />
                <asp:BoundField DataField="ptype" HeaderText="ptype" SortExpression="ptype" />
                <asp:BoundField DataField="other" HeaderText="other" SortExpression="other" />
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