using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Staff : System.Web.UI.Page
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
            cmd.CommandText = "Select stid from keygen";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                HiddenField1.Value = dr.GetInt32(0).ToString();
                k = dr.GetInt32(0);
            }
            T1.Text = "Stf" + k.ToString();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int k = 0;
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandText = "Select stid from staff";
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
            Response.Write("<script>alert('Category ID already exist')</script>");
        }
        else
        {
            try
            {
                cmd.CommandText = "insert into staff values('" + T1.Text + "','" + T2.Text + "','" + T3.Text + "','" + T4.Text + "','" + T5.Text + "','" + T6.Text + "','" + T7.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Record Saved')</script>");
                SqlDataSource1.SelectCommand = "select * from staff";
                GridView1.DataSourceID = "SqlDataSource1";
                int id = int.Parse(HiddenField1.Value.ToString()) + 1;
                cmd.CommandText = "update keygen set stid='" + id + "'";
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //Allsearch
        SqlDataSource1.SelectCommand = "select * from staff";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //Psearch
        SqlDataSource1.SelectCommand = "select * from staff where stid='" + T1.Text + "'";
        GridView1.DataSourceID = "SqlDataSource1";
    }
}