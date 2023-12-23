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
        int k = 0, l = 0, m = 0,n=0;
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandText = "Select ordid from order_detail";
        SqlDataReader dr0 = cmd.ExecuteReader();
        while (dr0.Read())
        {
            if (dr0.GetString(0) == T1.Text)
            {
                n = 1;
                break;
            }
        }
        conn.Close();
        conn.Open();
        if (n == 1)
        {
            Response.Write("<script>alert('Order ID1 already exist')</script>");
        }
        else
        {
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
                cmd.CommandText = "Select pid from product";
                SqlDataReader dr1 = cmd.ExecuteReader();
                while (dr1.Read())
                {
                    if (dr1.GetString(0) == T8.Text)
                    {
                        l = 1;
                        break;
                    }
                }
            }
            else
            {

                Response.Write("<script>alert('Order ID does not exist')</script>");
            }
            conn.Close();
            conn.Open();
            if (l == 1)
            {


                cmd.CommandText = "Select ordid from orders";
                SqlDataReader dr1 = cmd.ExecuteReader();
                while (dr1.Read())
                {
                    if (dr1.GetString(0) == T9.Text)
                    {
                        m = 1;
                        break;
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Product ID does not exist')</script>");
            }
            conn.Close();
            conn.Open();


            if (m == 1)
            {
                if (T1.Text == T9.Text)
                {
                    try
                    {
                        cmd.CommandText = "insert into order_detail values('" + T1.Text + "','" + T2.Text + "','" + T3.Text + "','" + T4.Text + "','" + T5.Text + "','" + T6.Text + "','" + T7.Text + "','" + T8.Text + "','" + T9.Text + "')";
                        cmd.ExecuteNonQuery();
                        Response.Write("<script>alert('Record Saved')</script>");
                        SqlDataSource1.SelectCommand = "select * from order_detail";
                        GridView1.DataSourceID = "SqlDataSource1";
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }
                else
                {
                    Response.Write("<script>alert('Both Order ID must be same')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Order ID2 does not exist')</script>");
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //All search
        SqlDataSource1.SelectCommand = "select * from order_detail";
        GridView1.DataSourceID = "SqlDataSource1";

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //Psearch
        SqlDataSource1.SelectCommand = "select * from order_detail where ordid='" + T1.Text + "'";
        GridView1.DataSourceID = "SqlDataSource1";
    }
}