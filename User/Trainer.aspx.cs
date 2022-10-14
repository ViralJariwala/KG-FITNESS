using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class User_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from trainer", cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }

    protected void btn_find_Click(object sender, EventArgs e)
    {
        if (ddl_search.SelectedItem.ToString() == "Crossfit")
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Trainer where  specialities = 'Crossfit'", cn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
        else if (ddl_search.SelectedItem.ToString() == "Power Lifting")
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Trainer where  specialities = 'Power Lifting'", cn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
        else if (ddl_search.SelectedItem.ToString() == "Weight Lifting")
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Trainer where  specialities = 'Weight Lifting'", cn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
        else if (ddl_search.SelectedItem.ToString() == "All")
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Trainer", cn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
    }
}