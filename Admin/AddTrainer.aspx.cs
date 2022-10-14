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
    string fname;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txt_save_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                fname = FileUpload1.FileName;
                ViewState["fname"] = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/Admin/TrainerPhoto/" + fname));
                Label1.Text = "File Uploaded Successfully...!!";
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


        fname = ViewState["fname"].ToString();
        cn.Open();
        qry = "insert into trainer values('" + txt_name.Text + "','" + txt_address.Text + "','" + txt_email.Text + "','" + txt_password.Text + "','" + ddl_gender.SelectedItem.Value + "','" + txt_phone_no.Text + "','" + ddl_specialities.SelectedItem.Value + "','" + ddl_Experience.SelectedItem.Value + "','" + txt_weight.Text + "','" + txt_age.Text + "','" + fname + "',1)";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        cn.Close();
    }
}