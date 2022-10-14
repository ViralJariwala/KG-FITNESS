using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_SignIn : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    int status;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_signin_Click(object sender, EventArgs e)
    {
        if (Page.Request.QueryString["ret"] != null)
        {
            if (Page.Request.QueryString["ret"].ToString() == "TPP")
            {
                cn.Open();
                qry = "select * from Member where email='" + txt_email.Text + "' and password='" + txt_password.Text + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    status = Convert.ToInt32(dr["status"]);
                    Session["member_id"] = dr["member_id"].ToString();
                    Session["email"] = dr["email"].ToString();
                    //Session["image"] = dr["image"].ToString();
                    if (status == 0)
                    {
                        Response.Redirect("ValidateOTP.aspx");
                    }
                    else
                    {
                        Session["member_id"] = dr["member_id"].ToString();
                        Session["image"] = dr["image"].ToString();
                        Response.Redirect("TrainerPlanPricing.aspx?tid=" + Page.Request.QueryString["tid"].ToString() );
                    }
                }
                else
                {
                    Label1.Text = "Invalid Details";
                }

                cn.Close();

            }
            else if (Page.Request.QueryString["ret"].ToString() == "MP")
            {
                cn.Open();
                qry = "select * from Member where email='" + txt_email.Text + "' and password='" + txt_password.Text + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    status = Convert.ToInt32(dr["status"]);
                    Session["member_id"] = dr["member_id"].ToString();
                    Session["email"] = dr["email"].ToString();
                    //Session["image"] = dr["image"].ToString();
                    if (status == 0)
                    {
                        Response.Redirect("ValidateOTP.aspx");
                    }
                    else
                    {
                        Session["member_id"] = dr["member_id"].ToString();
                        Session["image"] = dr["image"].ToString();
                        Response.Redirect("MembershipPricing.aspx");
                    }
                }
                else
                {
                    Label1.Text = "Invalid Details";
                }

                cn.Close();
            }
        }
        else
        {
            cn.Open();
            qry = "select * from Member where email='" + txt_email.Text + "' and password='" + txt_password.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                status = Convert.ToInt32(dr["status"]);
                Session["member_id"] = dr["member_id"].ToString();
                Session["email"] = dr["email"].ToString();
                //Session["image"] = dr["image"].ToString();
                if (status == 0)
                {
                    Response.Redirect("ValidateOTP.aspx");
                }
                else
                {
                    Session["member_id"] = dr["member_id"].ToString();
                    Session["image"] = dr["image"].ToString();
                    Response.Redirect("UHome.aspx");
                }
            }
            else
            {
                Label1.Text = "Invalid Details";
            }

            cn.Close();
        }
       
        
    }
}