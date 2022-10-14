using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Trainer_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "delete from Trainer_Paid where trainer_paid_id='" + Request.QueryString["tpid"].ToString() + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        cn.Open();
        qry = "delete from Trainer_Invoice where trainer_paid_id='" + Request.QueryString["tpid"].ToString() + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("ShowPTMember.aspx");
    }
}