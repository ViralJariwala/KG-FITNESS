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
    string qry, plan_name, discount, price, sgst, cgst, total_amount, sub_total,tid;
    string fname, lname, email, address, mobile, mpid, expirydate;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_chechout_cash_Click(object sender, EventArgs e)
    {
        string member_id = Session["member_id"].ToString();
        string trainer_id = Request.QueryString.Get("tid");
        string trainer_paid_id = Request.QueryString.Get("trainer_paid_id");
        string trainer_plan_id = Request.QueryString.Get("tpid");

        cn.Open();
        qry = "select * from trainer_purchase where trainer_plan_id='" + trainer_plan_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            plan_name = dr["plan_name"].ToString();
            price = dr["price"].ToString();
            discount = dr["discount"].ToString();
            sgst = dr["sgst"].ToString();
            cgst = dr["cgst"].ToString();
            sub_total = dr["sub_total"].ToString();
            total_amount = dr["total_amount"].ToString();
            tid = dr["trainer_id"].ToString();

        }
        cn.Close();



        cn.Open();
        qry = "select * from trainer_plan where trainer_plan_id='" + trainer_plan_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            expirydate = dr["plan_name"].ToString().Substring(0, 2).Trim();

        }
        cn.Close();


        cn.Open();
        qry = "select * from Membership_Paid where member_id='" + member_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            cn.Close();
            cn.Open();
            qry = "select * from Trainer_Paid where member_id='" + member_id + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                cn.Close();
                cn.Open();
                qry = "delete Trainer_Purchase where member_id='" + member_id + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script lang='javascript'>alert('Personal Trainer Already Purchased')</script>");
            }
            else
            {
                cn.Close();
                cn.Open();
                qry = "insert into Trainer_Paid values('" + trainer_plan_id + "','" +  tid +"','" + member_id + "','" + plan_name + "','" + price + "','" + discount + "','" + sgst + "','" + cgst + "','" + sub_total + "','" + total_amount + "','CASH','" + DateTime.Now.ToString("dd-MM-yyyy") + "','" + DateTime.Now.AddMonths(Convert.ToInt32(expirydate)).ToString("yyyy-MM-dd") + "',0)";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();





                cn.Open();
                qry = "delete Membership_Purchase where member_id='" + member_id + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Redirect("InsertCashTrainer.aspx?trainer_paid_id=" + trainer_paid_id + "&tid=" + trainer_id);
            }

            cn.Close();
        }
        else
        {
            cn.Close();
            Response.Redirect("MembershipPricing.aspx?membership=invalid");
        }



       
    }
    protected void btn_checkout_paytm_Click(object sender, EventArgs e)
    {
        string member_id = Session["member_id"].ToString();
        string trainer_id = Request.QueryString.Get("tid");
        string trainer_paid_id = Request.QueryString.Get("trainer_paid_id");
        string trainer_plan_id = Request.QueryString.Get("tpid");

        cn.Open();
        qry = "select * from trainer_purchase where trainer_plan_id='" + trainer_plan_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            plan_name = dr["plan_name"].ToString();
            price = dr["price"].ToString();
            discount = dr["discount"].ToString();
            sgst = dr["sgst"].ToString();
            cgst = dr["cgst"].ToString();
            sub_total = dr["sub_total"].ToString();
            total_amount = dr["total_amount"].ToString();

        }
        cn.Close();




        cn.Open();
        qry = "select * from Membership_Paid where member_id='" + member_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            cn.Close();
            cn.Open();
            qry = "select * from Trainer_Paid where member_id='" + member_id + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                cn.Close();
                cn.Open();
                qry = "delete Trainer_Purchase where member_id='" + member_id + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script lang='javascript'>alert('Personal Trainer Already Purchased')</script>");
            }
            else
            {
                Application["member_id"] = Session["member_id"].ToString();
                Application["tpid"] = Request.QueryString["tpid"].ToString();
                Application["tid"] = Request.QueryString["tid"].ToString();
                Application["image"] = Session["image"].ToString();
                Application["email"] = Session["email"].ToString();


                Response.Redirect("TrainerPaytmPaymentGateaway.aspx");
            }

            cn.Close();
        }
        else
        {
            cn.Close();
            Response.Redirect("MembershipPricing.aspx?membership=invalid");
        }
    }
}