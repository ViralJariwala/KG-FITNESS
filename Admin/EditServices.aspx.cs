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
            int sid = Convert.ToInt32(Request.QueryString.Get("sid"));
            cn.Open();
            qry = "select * from Services where service_id=" + sid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_title1.Text = dr["title"].ToString();
                txt_description1.Text = dr["description"].ToString();
                txt_title2.Text = dr["title2"].ToString();
                txt_description2.Text = dr["description2"].ToString();
            }
            cn.Close();
        }
    }
    protected void txt_save_Click(object sender, EventArgs e)
    {
        int sid = Convert.ToInt32(Request.QueryString.Get("sid"));
        cn.Open();
        qry = "update Services set title='" + txt_title1.Text + "',description='" + txt_description1.Text + "',title2='" + txt_title2.Text + "',description2='" + txt_description2.Text + "' where service_id='" + sid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("ShowServices.aspx");
    }
}