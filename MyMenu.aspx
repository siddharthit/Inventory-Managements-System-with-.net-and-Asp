<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyMenu.aspx.cs" Inherits="MyMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu</title>
    <link href="css/menu.css" rel="stylesheet" />
</head>
   
     <center>   
          <h1> Menu_List</h1> 
        
<body>
    <form id="form1" runat="server">
    <div style="height: 320px; width: 1024px">
     
    
        <asp:Menu ID="Menu1" runat="server" class="auto-style8" Orientation="Horizontal" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px" style="font-size: xx-large">
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <Items>
                <asp:MenuItem Text="Category" Value="Category">
                    <asp:MenuItem NavigateUrl="~/Category.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateCategory.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteCategory.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/REPORTCategory.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Customer" Value="Customer">
                    <asp:MenuItem NavigateUrl="~/Customer.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateCustomer.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteCustomer.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/REPORTCustomer.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Order" Value="Order">
                    <asp:MenuItem NavigateUrl="~/Order.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateOrder.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteOrder.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/REPORTOrder.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Payments" Value="Payments">
                    <asp:MenuItem NavigateUrl="~/Payment.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdatePayment.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeletePayment.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/REPORTPayment.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Order Details" Value="Order Details">
                    <asp:MenuItem NavigateUrl="~/Order_detail.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateOrder_detail.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteOrder_detail.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/REPORTOrder_detail.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Supplier" Value="Supplier">
                    <asp:MenuItem NavigateUrl="~/Supplier.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateSupplier.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteSupplier.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/REPORTSupplier.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Product" Value="Product">
                    <asp:MenuItem NavigateUrl="~/Product.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateProduct.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteProduct.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/REPORTProduct.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Staff" Value="Staff">
                    <asp:MenuItem NavigateUrl="~/Staff.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateStaff.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteStaff.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/REPORTStaff.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#FFCC66" />
        </asp:Menu>
   
    </div>
    </form>


    </body>
</html>
