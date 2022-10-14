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
    string qry,member_id,image;

    protected void Page_Load(object sender, EventArgs e)
    {
        member_id = Session["member_id"].ToString();
        cn.Open();
        qry = "select * from Member where member_id='" + member_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Image1.ImageUrl = "~/MemberPhoto/" + Convert.ToString(dr["image"]);
            lbl_fname.Text = dr["fname"].ToString();
            lbl_lname.Text = dr["lname"].ToString();
        }
        cn.Close();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        member_id = Session["member_id"].ToString();
        cn.Open();
        qry = "select * from Member where member_id='" + member_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Image1.ImageUrl = "~/MemberPhoto/" + Convert.ToString(dr["image"]);
            lbl_fname.Text = dr["fname"].ToString();
            lbl_lname.Text = dr["lname"].ToString();
        }
        cn.Close();


        cn.Open();
        qry = "insert into Feedback values('" + txt_description.Text + "','" + member_id + "','" + lbl_fname.Text + "','" + lbl_lname.Text + "','" + Image1.ImageUrl + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("UHome.aspx");
    }
}