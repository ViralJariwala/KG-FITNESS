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
        
        if (!IsPostBack)
        {
            int tpid = Convert.ToInt32(Request.QueryString.Get("tpid"));
            cn.Open();
            qry = "select * from Trainer_plan where trainer_plan_id=" + tpid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_planname.Text = dr["plan_name"].ToString();
                txt_price.Text = dr["price"].ToString();
                txt_discount.Text = dr["discount"].ToString();
                txt_strength1.Text = dr["strength1"].ToString();
                txt_strength2.Text = dr["strength2"].ToString();
                txt_strength3.Text = dr["strength3"].ToString();
            }
            cn.Close();
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        int tpid = Convert.ToInt32(Request.QueryString.Get("tpid"));
        int tid = Convert.ToInt32(Request.QueryString.Get("tid"));
        cn.Open();
        qry = "update trainer_plan set plan_name='" + txt_planname.Text + "',price='" + txt_price.Text + "',discount='" + txt_discount.Text + "',strength1='" + txt_strength1.Text + "',strength2='" + txt_strength2.Text + "',strength3='" + txt_strength3.Text  + "' where trainer_plan_id='" + tpid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("ShowPlan.aspx?tid=" + tid );
    }
}