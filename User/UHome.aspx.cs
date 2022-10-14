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
    string workout_id;

    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (Page.Request.QueryString["ivoiceid"] != null)
        {
            if (Page.Request.QueryString["ivoiceid"].ToString() == "invalid")
            {
                Response.Write("<script lang='javascript'>alert('No invoice yet')</script>");
            }

        }
        if (Page.Request.QueryString["membership"] != null)
        {
            if (Page.Request.QueryString["membership"].ToString() == "invalid")
            {
                Response.Write("<script lang='javascript'>alert('Your Membership Request Send To The Admin')</script>");
            }

        }
        if (Page.Request.QueryString["membership"] != null)
        {
            if (Page.Request.QueryString["membership"].ToString() == "success")
            {
                Response.Write("<script lang='javascript'>alert('You Paid For Membership')</script>");
            }

        }
        if (Page.Request.QueryString["password"] != null)
        {
            if (Page.Request.QueryString["password"].ToString() == "success")
            {
                Response.Write("<script lang='javascript'>alert('Password Changed Successfully')</script>");
            }

        }
        if (Page.Request.QueryString["Trainer"] != null)
        {
            if (Page.Request.QueryString["Trainer"].ToString() == "invalid")
            {
                Response.Write("<script lang='javascript'>alert('Your Personal Trainer Request Send To The Admin')</script>");
            }

        }
        if (Page.Request.QueryString["Trainer"] != null)
        {
            if (Page.Request.QueryString["Trainer"].ToString() == "success")
            {
                Response.Write("<script lang='javascript'>alert('You Paid For Personal Trainer')</script>");
            }

        }
        if (Page.Request.QueryString["workout"] != null)
        {
            if (Page.Request.QueryString["workout"].ToString() == "invalid")
            {
                Response.Write("<script lang='javascript'>alert('No Workout Found For You')</script>");
            }

        }

        //membership

        cn.Open();
        DataTable dt1 = new DataTable();
        SqlDataAdapter adp;
        qry = "select membership_paid_id,expiry_date from membership_paid";
        cmd = new SqlCommand(qry, cn);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(dt1);
        for (int i = 0; i < dt1.Rows.Count; i++)
        {
            Session["defmpid"] = dt1.Rows[i]["membership_paid_id"].ToString();
            
            DateTime olddate = Convert.ToDateTime(dt1.Rows[i]["expiry_date"].ToString());
            int id1 = Convert.ToInt32(dt1.Rows[i]["membership_paid_id"].ToString());
            if (olddate < DateTime.Now)
            {               
                removesub(id1);
            }
        }
        cn.Close();

        //trainer

        cn.Open();
        DataTable dt2 = new DataTable();
        //SqlDataAdapter adp;
        qry = "select trainer_paid_id,expiry_date from trainer_paid";
        cmd = new SqlCommand(qry, cn);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(dt2);
        for (int i2 = 0; i2 < dt2.Rows.Count; i2++)
        {
            Session["deftpid"] = dt2.Rows[i2]["trainer_paid_id"].ToString();

            DateTime olddate = Convert.ToDateTime(dt2.Rows[i2]["expiry_date"].ToString());
            int id2 = Convert.ToInt32(dt2.Rows[i2]["trainer_paid_id"].ToString());
            if (olddate < DateTime.Now)
            {
                removesub(id2);
            }
        }
        cn.Close();

        //workout date
        
        cn.Open();
        DataTable dt3 = new DataTable();
        //SqlDataAdapter adp;
        qry = "select workout_id,status,expiry_date from Workout";
        cmd = new SqlCommand(qry, cn);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(dt3);
        for (int i3 = 0; i3 < dt3.Rows.Count; i3++)
        {
            Session["defwid"] = dt3.Rows[i3]["status"].ToString();
            workout_id = dt3.Rows[i3]["workout_id"].ToString();

            DateTime olddate = Convert.ToDateTime(dt3.Rows[i3]["expiry_date"].ToString());
            int id3 = Convert.ToInt32(dt3.Rows[i3]["status"].ToString());
            if (olddate < DateTime.Now)
            {
                updateworkout(id3);
            }
        }
        cn.Close();



    }

    public void updateworkout(int id3)
    {

        cn.Close();
        cn.Open();
        qry = "update workout set status=0 where workout_id=" + workout_id;
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
    }



    public void removesub(int id)
    {
        
        cn.Close();
        cn.Open();
        qry = "delete from membership_paid where membership_paid_id=" + id;
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
    }

    //trainer

   
}