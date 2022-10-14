using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Trainer_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        int tid = Convert.ToInt32(Request.QueryString.Get("tid"));
        int tpid = Convert.ToInt32(Request.QueryString.Get("tpid"));
        cn.Open();
        qry = "delete from trainer_gallery where trainer_gallery_id=" + tpid ;
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("ShowGallery.aspx?tid=" + tid);
    }
}