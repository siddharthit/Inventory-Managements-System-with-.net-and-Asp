using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;

public partial class signup : System.Web.UI.Page
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
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int k = 0;
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandText = "Select id from login";
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.GetString(0) == T1.Text)
            {
                k = 1;
                break;
            }
        }
        conn.Close();
        conn.Open();
        if (k == 1)
        {
            Response.Write("<script>alert('Username already exist')</script>");
        }
        else
        {
            try
            {
                cmd.CommandText = "insert into login values('" + T1.Text + "','" + T2.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('User Created')</script>");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}

 
