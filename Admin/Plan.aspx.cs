using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txt_save_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into Membership_Plan values('" + txt_planname.Text + "','" + txt_price.Text + "','"+ txt_discount.Text + "','" + txt_facilities1.Text + "','" + txt_facilities2.Text + "','" + txt_facilities3.Text + "','" + txt_facilities4.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("ShowPlan.aspx");
    }
}