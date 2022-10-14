using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class LogIn : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_submit_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Admin where email='" + Txt_Email.Text + "' and password='" + Txt_Password.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Session["Aid"] = dr["admin_id"].ToString();
            Session["profile"] = dr["profile"].ToString();
            Session["city_id"] = dr["city_id"].ToString();
            Response.Redirect("AHome.aspx");
        }
        cn.Close();
        
 
    }
}