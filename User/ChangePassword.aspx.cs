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
    string old_password, member_id;

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
        Label1.Text = "";
        cn.Open();
        qry = "select * from Member where member_id='" + member_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            old_password = dr["password"].ToString();
            if (old_password == txt_password.Text)
            {
                if (txt_new_password.Text == txt_confirm_password.Text)
                {
                    cn.Close();
                    cn.Open();
                    qry = "update Member set password='" + txt_new_password.Text + "' where member_id='" + member_id + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    //Response.Write("<script lang='javascript'>alert('Password Chnage Successfully')</script>");
                    Response.Redirect("UHome.aspx?password=success");

                }
            }
            else
            {
                Label1.Text = "Incorrect Password. Please Enter Correct Password !";
            }

        }
        cn.Close();
       
    }
}