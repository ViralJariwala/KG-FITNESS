using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

public partial class Trainer_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    string fname;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string trainer_id = Request.QueryString.Get("tid");
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                fname = FileUpload1.FileName;
                ViewState["fname"] = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/Trainer/TrainerGallery/" + fname));
                Label1.Text = "File Uploaded Successfully...!!";
                Image1.ImageUrl = "~/Trainer/TrainerGallery/" + fname;
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
        qry = "insert into Trainer_Gallery values('" + trainer_id +"','"+ fname + "')";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        cn.Close();
    }
}