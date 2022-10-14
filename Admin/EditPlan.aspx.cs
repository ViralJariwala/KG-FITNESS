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
        if (!IsPostBack)
        {
            int pid = Convert.ToInt32(Request.QueryString.Get("pid"));
            cn.Open();
            qry = "select * from membership_plan where plan_id=" + pid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_planname.Text = dr["plan_name"].ToString();
                txt_price.Text = dr["price"].ToString();
                txt_discount.Text = dr["discount"].ToString();
                txt_facilities1.Text = dr["facilities1"].ToString();
                txt_facilities2.Text = dr["facilities2"].ToString();
                txt_facilities3.Text = dr["facilities3"].ToString();
                txt_facilities4.Text = dr["facilities4"].ToString();
            }
            cn.Close();
        }
    }

    protected void btn_save_Click(object sender, EventArgs e)
    {
        int pid = Convert.ToInt32(Request.QueryString.Get("pid"));
        cn.Open();
        qry = "update membership_plan set plan_name='" + txt_planname.Text + "',price='" + txt_price.Text + "',discount='" + txt_discount.Text + "',facilities1='" + txt_facilities1.Text + "',facilities2='" + txt_facilities2.Text + "',facilities3='" + txt_facilities3.Text + "',facilities4='" + txt_facilities4.Text + "' where plan_id='" + pid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("ShowPlan.aspx");
    }
}