using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Customer : System.Web.UI.Page
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

            cmd.CommandText = "update customer set cfnm='" + T2.Text + "', clnm='" + T3.Text + "' , cphone='" + T4.Text + "', cemail='" + T5.Text + "', stid='" + T6.Text + "' where cid= '" + T1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Updated')</script>");
            SqlDataSource1.SelectCommand = "select * from customer";
            GridView1.DataSourceID = "SqlDataSource1";

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}