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

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    string member_id = Session["member_id"].ToString();
        //    string trainer_plan_id = Request.QueryString.Get("tpid");
        //    string trainer_purchase_id = Request.QueryString.Get("trainer_purchase_id");

        //    cn.Open();
        //    qry = "select * from trainer_purchase where trainer_plan_id='" + trainer_plan_id + "' and member_id='" + member_id + "'";
        //    cmd = new SqlCommand(qry, cn);
        //    dr = cmd.ExecuteReader();
        //    if (dr.HasRows)
        //    {
        //        dr.Read();
        //lbl_sub_total.Text = dr["sub_total"].ToString();
        //lbl_sub_total.Text = dr["sub_total"].ToString();
        //lbl_discount.Text = dr["discount"].ToString();
        //lbl_total.Text = dr["total_amount"].ToString();
        //lbl_cgst.Text = dr["cgst"].ToString();
        //lbl_sgst.Text = dr["sgst"].ToString();

        //}
        //cn.Close();
        //}
    }
    //protected void btb_checkout_Click(object sender, EventArgs e)
    //{
    //    string member_id = Session["member_id"].ToString();
    //    string trainer_plan_id = Request.QueryString.Get("tpid");
    //    Response.Redirect("TrainerPayment.aspx?tpid=" + trainer_plan_id);

    //}
    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "checkout")
        {
            string member_id = Session["member_id"].ToString();
            string trainer_plan_id = Request.QueryString.Get("tpid");
            string trainer_id = Request.QueryString.Get("tid");
            Response.Redirect("TrainerPayment.aspx?tpid=" + trainer_plan_id + "&tid=" + trainer_id);
        }
    }
}