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
    string old_password;

    protected void Page_Load(object sender, EventArgs e)
    {
        int Aid = Convert.ToInt32(Request.QueryString.Get("Aid"));
        cn.Open();
        qry = "select * from admin where admin_id='" + Aid + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Image1.ImageUrl = "~/Admin/AdminImage/" + Convert.ToString(dr["profile"]);
            lbl_name.Text = dr["name"].ToString();
            lbl_email.Text = dr["email"].ToString();
        }
        cn.Close();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        int Aid = Convert.ToInt32(Request.QueryString.Get("Aid"));
        Label1.Text = "";
        cn.Open();
        qry = "select * from admin where admin_id='" + Aid + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            old_password = dr["password"].ToString();
            if (old_password == txt_old_password.Text)
            {
                if (txt_new_password.Text == txt_confirm_password.Text)
                {
                    cn.Close();
                    cn.Open();
                    qry = "update admin set password='" + txt_new_password.Text + "' where admin_id='" + Aid + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    //Response.Write("<script lang='javascript'>alert('Password Chnage Successfully')</script>");
                    Response.Redirect("AHome.aspx?password=success");

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