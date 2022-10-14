using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Trainer_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        string tid = Request.QueryString.Get("tid").ToString();
        SqlDataAdapter sda = new SqlDataAdapter("select * from member mb,trainer tr,workout wo where mb.member_id=wo.member_id AND wo.trainer_id=tr.trainer_id AND wo.trainer_id='" + tid + "'" , cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
}