<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" %>
  
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer_Detail</title>
 <link href="css/customer.css" rel="stylesheet" ></link>
</head>
  <center>
       <h1> Customer_Save_Record </h1>
<body>
    
    <form id="form1" runat="server">
    <div class="abc">
   
        <table class="table" border="25" >
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="Customer ID"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="First Name" ></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T2" runat="server"  onkeypress="return allowonlyalpa() "></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T3" runat="server" onkeypress="return allowonlyalpa() "></asp:TextBox>
                </td>
              
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label5" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="T5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label6" runat="server" Text="Staff ID"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="T6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    
                     <table class="auto-style6">
                         <tr>
                             <td class="auto-style5">
                    <asp:Button ID="Button3" runat="server"  class="button" Text="Allsearch" OnClick="Button3_Click" Height="34px" Width="104px" />
                                 &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" class="button" Text="Psearch" OnClick="Button4_Click" Height="35px" Width="100px" />
                                 &nbsp;&nbsp;
                   <asp:Button ID="Button2" runat="server" class="button" Text="Save" OnClick="Button2_Click" Height="34px" Width="87px" />
                                 &nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button1" runat="server" class="button"  Text="New" OnClick="Button1_Click" Width="85px" Height="32px" />
               
                &nbsp; </td>
                         </tr>
                     </table>
               
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="95px" style="margin-right: 0px" Width="218px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
                <asp:BoundField DataField="cfnm" HeaderText="cfnm" SortExpression="cfnm" />
                <asp:BoundField DataField="clnm" HeaderText="clnm" SortExpression="clnm" />
                <asp:BoundField DataField="cphone" HeaderText="cphone" SortExpression="cphone" />
                <asp:BoundField DataField="cemail" HeaderText="cemail" SortExpression="cemail" />
                <asp:BoundField DataField="stid" HeaderText="stid" SortExpression="stid" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
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