using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        string member_id = Session["member_id"].ToString();
        cn.Open();
        qry = "select * from workout where member_id='" + member_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            cn.Close();
        }
        else
        {
            Response.Redirect("UHome.aspx?workout=invalid");
        }

    }
}