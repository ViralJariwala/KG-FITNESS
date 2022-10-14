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
    string qry, fname;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int cid = Convert.ToInt32(Request.QueryString.Get("cid"));
            cn.Open();
            qry = "select * from Class where class_id=" + cid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Image1.ImageUrl = "~/ServicesImage/" + dr["image"].ToString();
                ddl_class.SelectedValue = dr["class_name"].ToString();
                ddl_trainer.SelectedValue = dr["trainer_name"].ToString();
                ddl_1st_day.SelectedValue = dr["day1"].ToString();
                ddl_1st_time.SelectedValue = dr["time1"].ToString();
                ddl_2nd_day.SelectedValue = dr["day2"].ToString();
                ddl_2nd_time.SelectedValue = dr["time2"].ToString();
                ddl_3rd_day.SelectedValue = dr["day3"].ToString();
                ddl_3rd_time.SelectedValue = dr["time3"].ToString();
            }
            cn.Close();
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        int cid = Convert.ToInt32(Request.QueryString.Get("cid"));

        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                fname = FileUpload1.FileName;
                ViewState["fname"] = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/ServicesImage/" + ViewState["fname"]));
                Label1.Text = "File Uploaded Successfully...!!";
                Image1.ImageUrl = "~/ServicesImage/" + ViewState["fname"];

                cn.Open();
                qry = "update Class set class_name='" + ddl_class.SelectedItem.Value + "',trainer_name='" + ddl_trainer.SelectedItem.Value + "',day1='" + ddl_1st_day.SelectedItem.Value + "',time1='" + ddl_1st_time.SelectedItem.Value + "',day2='" + ddl_2nd_day.SelectedItem.Value + "',time2='" + ddl_2nd_time.SelectedItem.Value + "',day3='" + ddl_3rd_day.SelectedItem.Value + "',time3='" + ddl_3rd_time.SelectedItem.Value + "',image='" + ViewState["fname"].ToString() + "' where class_id='" + cid + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Session["image"] = ViewState["fname"].ToString();
                Response.Redirect("ShowClass.aspx");
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
        qry = "update Class set class_name='" + ddl_class.SelectedItem.Value + "',trainer_name='" + ddl_trainer.SelectedItem.Value + "',day1='" + ddl_1st_day.SelectedItem.Value + "',time1='" + ddl_1st_time.SelectedItem.Value + "',day2='" + ddl_2nd_day.SelectedItem.Value + "',time2='" + ddl_2nd_time.SelectedItem.Value + "',day3='" + ddl_3rd_day.SelectedItem.Value + "',time3='" + ddl_3rd_time.SelectedItem.Value + "' where class_id='" + cid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("ShowClass.aspx");
    }
}