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
    string qry, fname;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            txt_notes.Text = " ";
        }
        
    }

    protected void txt_save_Click(object sender, EventArgs e)
    {
        string tid = Request.QueryString.Get("tid");
        string member_id = Request.QueryString.Get("member_id");
        string message = "";
        foreach (ListItem item in ListBox1.Items)
        {
            if (item.Selected)
            {
                message +=  item.Text + " , " ;
                // message += item.Text + " " + item.Value + "\\n";
            }
        }
        cn.Open();
        qry = "insert into Workout values('" + tid + "','" + member_id + "','" + ddl_exercise.SelectedItem.Text + "','" + message + "','" + ddl_set.SelectedItem.Text + "','" + ddl_rep.SelectedItem.Text + "','" + txt_notes.Text + "',1,'" + DateTime.Now.ToString("dd-MM-yyyy") + "','" + DateTime.Now.AddDays(2).ToString("yyyy-MM-dd")  + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        cn.Open();
        qry = "update provide_workout set status=1 where trainer_id=" + tid;
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();


        Response.Redirect("WorkoutForMember.aspx?tid=" + tid);
    }
}