using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Trainer_LogIn : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    int status;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_submit_Click1(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Trainer where email='" + Txt_Email.Text + "' and password='" + Txt_Password.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            status = Convert.ToInt32(dr["status"]);
            Session["tid"] = dr["trainer_id"].ToString();
            Session["email"] = dr["email"].ToString();
            Session["image"] = dr["image"].ToString();
            if (status == 0)
            {
                Response.Redirect("WaitTrainer.aspx");
            }
            else
            {
                Session["tid"] = dr["trainer_id"].ToString();
                Session["email"] = dr["email"].ToString();
                Session["image"] = dr["image"].ToString();
                Response.Redirect("AHome.aspx");
            }
        }
        cn.Close();
    }
}