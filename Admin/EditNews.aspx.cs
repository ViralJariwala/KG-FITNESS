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
        if (!IsPostBack)
        {
            int nid = Convert.ToInt32(Request.QueryString.Get("nid"));
            cn.Open();
            qry = "select * from News where news_id=" + nid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {

                dr.Read();
                Image1.ImageUrl = "~/NewsImages/" + dr["image"].ToString();
                txt_title.Text = dr["title"].ToString();
                txt_description.Text = dr["description"].ToString();
                txt_date.Text = dr["date"].ToString();
                txt_year.Text = dr["year"].ToString();
            }
            cn.Close();
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        int nid = Convert.ToInt32(Request.QueryString.Get("nid"));

        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                fname = FileUpload1.FileName;
                ViewState["fname"] = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/NewsImages/" + ViewState["fname"]));
                Label1.Text = "File Uploaded Successfully...!!";
                Image1.ImageUrl = "~/NewsImages/" + ViewState["fname"];

                cn.Open();
                qry = "update News set title='" + txt_title.Text + "',description='" + txt_description.Text + "',date='" + txt_date.Text + "',year='" + txt_year.Text + "',image='" + ViewState["fname"].ToString() + "' where news_id='" + nid + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Session["image"] = ViewState["fname"].ToString();
                Response.Redirect("ShowNews.aspx");
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
        qry = "update News set title='" + txt_title.Text + "',description='" + txt_description.Text + "',date='" + txt_date.Text + "',year='" + txt_year.Text + "'where news_id='" + nid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("ShowNews.aspx");
    }
}