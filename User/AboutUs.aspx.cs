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
    int trainer,member,feedback,classes;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select count(*) from Trainer";
        cmd = new SqlCommand(qry, cn);
        trainer = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        lbl_trainer.Text = trainer.ToString();


        cn.Open();
        qry = "select count(*) from Member";
        cmd = new SqlCommand(qry, cn);
        member = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        lbl_member.Text = member.ToString();

        cn.Open();
        qry = "select count(*) from Feedback";
        cmd = new SqlCommand(qry, cn);
        feedback = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        lbl_feedback.Text = feedback.ToString();

        cn.Open();
        qry = "select count(*) from Class";
        cmd = new SqlCommand(qry, cn);
        classes = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        lbl_classes.Text = classes.ToString();
    }
}