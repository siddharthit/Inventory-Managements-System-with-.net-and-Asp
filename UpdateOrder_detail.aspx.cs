using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Order_detail : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Inventory.mdf;Integrated Security=True");
        if (conn.State == ConnectionState.Open)
            conn.Close();
        conn.Open();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = conn.CreateCommand();

            cmd.CommandText = "update order_detail set ordprice='" + T2.Text + "', ordsize='" + T3.Text + "' , ordqty='" + T4.Text + "', orddist='" + T5.Text + "', ordtot='" + T6.Text + "' , orddt='" + T7.Text + "', pid='" + T8.Text + "', ordidf='" + T9.Text + "' where ordid= '" + T1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Updated')</script>");
            SqlDataSource1.SelectCommand = "select * from order_detail";
            GridView1.DataSourceID = "SqlDataSource1";

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}