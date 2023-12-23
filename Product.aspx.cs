using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Product : System.Web.UI.Page
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
            cmd.CommandText = "Select pymid from keygen";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                HiddenField1.Value = dr.GetInt32(0).ToString();
                k = dr.GetInt32(0);
            }
            T1.Text = "Pro" + k.ToString();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int k = 0, l = 0,n=0;
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandText = "Select pid from product";
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
            Response.Write("<script>alert('Product ID already exist')</script>");
        }
        else
        {
            cmd.CommandText = "Select sid from supplier";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (dr.GetString(0) == T9.Text)
                {
                    k = 1;
                    break;
                }
            }

            conn.Close();
            conn.Open();

            if (k == 1)
            {
                cmd.CommandText = "Select cid from category";
                SqlDataReader dr1 = cmd.ExecuteReader();
                while (dr1.Read())
                {
                    if (dr1.GetString(0) == T10.Text)
                    {
                        l = 1;
                        break;
                    }
                }
            }
            else
            {

                Response.Write("<script>alert('Supplier ID does not exist')</script>");
            }
            conn.Close();
            conn.Open();
            if (l == 1)
            {

                try
                {
                    cmd.CommandText = "insert into product values('" + T1.Text + "','" + T2.Text + "','" + T3.Text + "','" + T4.Text + "','" + T5.Text + "','" + T6.Text + "','" + T7.Text + "','" + T8.Text + "','" + T9.Text + "','" + T10.Text + "')";
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Record Saved')</script>");
                    SqlDataSource1.SelectCommand = "select * from product";
                    GridView1.DataSourceID = "SqlDataSource1";
                    int id = int.Parse(HiddenField1.Value.ToString()) + 1;
                    cmd.CommandText = "update keygen set pymid='" + id + "'";
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }
            else
            {
                Response.Write("<script>alert('Category ID does not exist')</script>");
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //Allsearch
        SqlDataSource1.SelectCommand = "select * from product";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //Psearch
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from product where (pid='" + T11.Text + "' or pnm='" + T11.Text + "' or pdesc='" + T11.Text + "' or punit='" + T11.Text + "' or pprice='" + T11.Text + "' or pqty='" + T11.Text + "' or pstatus='" + T11.Text + "' or pother='" + T11.Text + "' or sid='" + T11.Text + "' or cid='" + T11.Text + "') ";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                T1.Text = dr.GetString(0);
                T2.Text = dr.GetString(1);
                T3.Text = dr.GetString(2);
                T4.Text = dr.GetString(3);
                T5.Text = dr.GetString(4);
                T6.Text = dr.GetString(5);
                T7.Text = dr.GetString(6);
                T8.Text = dr.GetString(7);
                T9.Text = dr.GetString(8);
                T10.Text = dr.GetString(9);
            }
            SqlDataSource1.SelectCommand = "select * from product where (pid='" + T11.Text + "' or pnm='" + T11.Text + "' or pdesc='" + T11.Text + "' or punit='" + T11.Text + "' or pprice='" + T11.Text + "' or pqty='" + T11.Text + "' or pstatus='" + T11.Text + "' or pother='" + T11.Text + "' or sid='" + T11.Text + "' or cid='" + T11.Text + "') ";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}