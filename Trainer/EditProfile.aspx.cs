using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Trainer_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    int tid;
    string fname;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Image1.ImageUrl = "~/Admin/TrainerPhoto/" + Session["image"];
        if (!IsPostBack)
        {
            tid = Convert.ToInt32(Request.QueryString.Get("tid"));
            cn.Open();
            qry = "select * from Trainer where trainer_id=" + tid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Image1.ImageUrl = "~/Admin/TrainerPhoto/" + Convert.ToString(dr["image"]);
                txt_name.Text = dr["name"].ToString();
                txt_address.Text = dr["address"].ToString();
                txt_email.Text = dr["email"].ToString();
               // txt_password.Text = dr["password"].ToString();
                ddl_gender.SelectedValue = dr["gender"].ToString();
                txt_mobileno.Text = dr["mobile"].ToString();
                ddl_specialities.SelectedValue = dr["specialities"].ToString();
                ddl_experience.SelectedValue = dr["expericence"].ToString();
                txt_weight.Text = dr["weight"].ToString();
                txt_age.Text = dr["age"].ToString();
            }
            cn.Close();
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        tid = Convert.ToInt32(Request.QueryString.Get("tid"));
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                fname = FileUpload1.FileName;
                ViewState["fname"] = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/Admin/TrainerPhoto/" + ViewState["fname"]));
                Label1.Text = "File Uploaded Successfully...!!";
                Image1.ImageUrl = "~/Admin/TrainerPhoto/" + ViewState["fname"];

                cn.Open();
                qry = "update trainer set name='" + txt_name.Text + "',address='" + txt_address.Text + "',email='" + txt_email.Text + "',gender='" + ddl_gender.SelectedItem.Value + "',mobile='" + txt_mobileno.Text + "',specialities='" + ddl_specialities.SelectedItem.Value + "',expericence='" + ddl_experience.SelectedItem.Value + "',weight='" + txt_weight.Text + "',age='" + txt_age.Text + "',image='" + ViewState["fname"].ToString() + "' where trainer_id='" + tid + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Session["image"] = ViewState["fname"].ToString();
                Response.Redirect("AHome.aspx");
            }
            else
            {
                Label1.Text = "Please Select Only JPG Or JPEG or PNG File";
            }
        }
        else
        {
            Label1.Text = "Please Select A File..!!";
        }

        cn.Open();
        qry = "update trainer set name='" + txt_name.Text + "',address='" + txt_address.Text + "',email='" + txt_email.Text + "',gender='" + ddl_gender.SelectedItem.Value + "',mobile='" + txt_mobileno.Text + "',specialities='" + ddl_specialities.SelectedItem.Value + "',expericence='" + ddl_experience.SelectedItem.Value + "',weight='" + txt_weight.Text + "',age='" + txt_age.Text + "' where trainer_id='" + tid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("AHome.aspx");
    }
}