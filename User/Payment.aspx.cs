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
    string qry,plan_name,discount,price,sgst,cgst,total_amount,sub_total;
    string fname, lname, email, address, mobile,mpid,expirydate;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn_chechout_cash_Click(object sender, EventArgs e)
    {
        string member_id = Session["member_id"].ToString();
        string membership_paid_id = Request.QueryString.Get("mpid");
        string plan_id = Request.QueryString.Get("pid");


        cn.Open();
        qry = "select * from membership_purchase where plan_id='" + plan_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            dr.Read();
            plan_name =  dr["plan_name"].ToString();
            price = dr["price"].ToString();
            discount = dr["discount"].ToString();
            sgst = dr["sgst"].ToString();
            cgst = dr["cgst"].ToString();
            sub_total = dr["sub_total"].ToString();
            total_amount = dr["total_amount"].ToString();
            
        }
        cn.Close();

        cn.Open();
        qry = "select * from membership_plan where plan_id='" + plan_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            expirydate = dr["plan_name"].ToString().Substring(0, 2).Trim();

        }
        cn.Close();

        cn.Open();
        qry = "select * from membership_paid where member_id='" + member_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            cn.Close();
            cn.Open();
            qry = "delete Membership_Purchase where member_id='" + member_id + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script lang='javascript'>alert('Membership already purchased')</script>");
        }
        else
        {
            cn.Close();
            cn.Open();
            qry = "insert into Membership_Paid values('" + plan_id + "','" + member_id + "','" + plan_name + "','" + price + "','" + discount + "','" + sgst + "','" + cgst + "','" + sub_total + "','" + total_amount + "','CASH','" + DateTime.Now.ToString("dd-MM-yyyy") + "','"  + DateTime.Now.AddMonths(Convert.ToInt32(expirydate)).ToString("yyyy-MM-dd") +"',0)";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            


       

            cn.Open();
            qry = "delete Membership_Purchase where member_id='" + member_id + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("InsertCashMembership.aspx?membership_paid_id=" + membership_paid_id);
        }

        cn.Close();




       
    }
    protected void btn_chechout_paytm_Click(object sender, EventArgs e)
    {
        string member_id = Session["member_id"].ToString();
        string plan_id = Request.QueryString.Get("pid");
        
        //string membership_paid_id = Request.QueryString.Get("membership_paid_id");
        cn.Open();
        qry = "select * from membership_purchase where plan_id='" + plan_id + "'";
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
            total_amount = dr["total_amount"].ToString();
        }
        cn.Close();


        cn.Open();
        qry = "select * from membership_paid where member_id='" + member_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            cn.Close();
            cn.Open();
            qry = "delete Membership_Purchase where member_id='" + member_id + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script lang='javascript'>alert('Membership already purchased')</script>");
        }
        else
        {
        //    cn.Close();
        //      cn.Open();
        //qry = "select * from membership_paid where plan_id='" + plan_id + "'AND member_id='" + member_id + "'";
        //cmd = new SqlCommand(qry, cn);
        //dr = cmd.ExecuteReader();
        //if (dr.HasRows)
        //{
        //     dr.Read();
        //     mpid = dr["membership_paid_id"].ToString();
        //}
        //cn.Close();
        //Session["mpid"] = mpid;
        //    Application["mpid"] = mpid;
            Application["member_id"] = Session["member_id"].ToString();
            Application["image"] = Session["image"].ToString();
            Application["pid"] = Request.QueryString["pid"].ToString();
            Application["email"] = Session["email"].ToString();


            Response.Redirect("PaytmPaymentGateaway.aspx");
        }

        
    }


}