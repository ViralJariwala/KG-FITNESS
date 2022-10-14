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
        string member_id = Session["member_id"].ToString();
        string trainer_plan_id = Request.QueryString.Get("tpid");
        string trainer_id = Request.QueryString.Get("tid");
        string trainer_purchase_id = Request.QueryString.Get("trainer_purchase_id");
        int price = Convert.ToInt32(Request.QueryString.Get("price"));
        int discount = Convert.ToInt32(Request.QueryString.Get("discount"));
        string plan_name = Request.QueryString.Get("plan_name");
        Double sub_total, cgst, sgst, final_total;

        discount = (price * discount) / 100;
        sub_total = price - discount;
        cgst = sub_total * 2.5 / 100;
        sgst = sub_total * 2.5 / 100;
        final_total = sub_total + cgst + sgst;

        cn.Open();
        qry = "select * from trainer_purchase where trainer_plan_id='" + trainer_plan_id + "'and member_id='" + member_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            cn.Close();
            Response.Redirect("TrainerPlanCart.aspx?tpid=" + trainer_plan_id + "&trainer_purchase_id=" + trainer_purchase_id  + "&tid=" + trainer_id);
        }
        else
        {
            cn.Close();
            cn.Open();
            qry = "insert into trainer_purchase values('" + trainer_plan_id + "','" + member_id + "','" + trainer_id + "','" + plan_name + "','" + price + "','" + discount + "','" + sgst + "','" + cgst + "','" + sub_total + "','" + final_total + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("TrainerPlanCart.aspx?tpid=" + trainer_plan_id + "&trainer_purchase_id=" + trainer_purchase_id + "&tid=" + trainer_id);
        }
        
    }
}