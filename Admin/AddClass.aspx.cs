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
    string qry,fname;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                fname = FileUpload1.FileName;
                ViewState["fname"] = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/ServicesImage/" + fname));
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

        cn.Open();
        qry = "insert into Class values('" + ddl_class.SelectedItem.Text + "','" + ddl_trainer.SelectedItem.Text + "','" + ddl_1st_day.SelectedItem.Text + "','" + ddl_1st_time.SelectedItem.Text + "','" + ddl_2nd_day.SelectedItem.Text + "','" + ddl_2nd_time.SelectedItem.Text + "','" + ddl_3rd_day.SelectedItem.Text + "','" + ddl_3rd_time.SelectedItem.Text + "','" + fname +  "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("ShowClass.aspx");
    }
}