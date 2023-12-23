using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Order : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Inventory.mdf;Integrated Security=True");
        if (conn.State == ConnectionState.Open)
            conn.Close();
        conn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Generate id
        try
        {
            int k = 0;
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Select ordid from keygen";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                HiddenField1.Value = dr.GetInt32(0).ToString();
                k = dr.GetInt32(0);
            }
            T1.Text = "Ord" + k.ToString();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int k = 0, l = 0;
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandText = "Select ordid from orders";
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
            Response.Write("<script>alert('Order ID already exist')</script>");
        }
        else
        {

            cmd.CommandText = "Select cid from customer";
            SqlDataReader dr1 = cmd.ExecuteReader();
            while (dr1.Read())
            {
                if (dr1.GetString(0) == T4.Text)
                {
                    l = 1;
                    break;
                }
            }
        }
        conn.Close();
        conn.Open();
        if (l == 1)
        {
            try
            {
                cmd.CommandText = "insert into orders values('" + T1.Text + "','" + T2.Text + "','" + T3.Text + "','" + T4.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Record Saved')</script>");
                SqlDataSource1.SelectCommand = "select * from orders";
                GridView1.DataSourceID = "SqlDataSource1";
                int id = int.Parse(HiddenField1.Value.ToString()) + 1;
                cmd.CommandText = "update keygen set ordid='" + id + "'";
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        else
        {
            Response.Write("<script>alert('Customer ID does not exist')</script>");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //Allsearch
        SqlDataSource1.SelectCommand = "select * from orders";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //Psearch
        SqlDataSource1.SelectCommand = "select * from orders where ordid='" + T1.Text + "'";
        GridView1.DataSourceID = "SqlDataSource1";

    }
    
}