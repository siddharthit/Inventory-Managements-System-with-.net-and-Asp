using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
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
        int k=0;
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandText = "Select * from login";
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.GetString(0) == T1.Text)
            {
                if (dr.GetString(1) == T2.Text)
                {
                    k = 1;
                    break;
                }
            }
        }
        if (k == 1)
        {
            Response.Write("<script>alert('Login Successful')</script>");
            Response.Write("<script>window.open('MyMenu.aspx','_self')</script>");
        }
        else
            Response.Write("<script>alert('Invalid ID or Password ')</script>");
    }
}