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
    string qry, plan_name, discount, price, sgst, cgst, total_amount, sub_total, expiry_date;
    string fname, lname, email, address, mobile;
    string trainer_name;

    protected void Page_Load(object sender, EventArgs e)
    {
        string member_id = Application["member_id"].ToString();
        string trainer_paid_id = Application["tpid"].ToString();
        string trainer_id = Application["tid"].ToString();


        cn.Open();
        qry = "select * from trainer where trainer_id='" + trainer_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            trainer_name = dr["name"].ToString();

        }
        cn.Close();



        cn.Open();
        qry = "select * from member where member_id='" + member_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            fname = dr["fname"].ToString();
            lname = dr["lname"].ToString();
            address = dr["address"].ToString();
            email = dr["email"].ToString();
            mobile = dr["mobile"].ToString();

        }
        cn.Close();


        cn.Open();
        qry = "select * from Trainer_Paid where member_id='" + member_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            plan_name = dr["plan_name"].ToString();
            price = dr["price"].ToString();
            discount = dr["discount"].ToString();
            total_amount = dr["total_amount"].ToString();
            sgst = dr["sgst"].ToString();
            cgst = dr["cgst"].ToString();
            total_amount = dr["total_amount"].ToString();
            trainer_paid_id = dr["trainer_paid_id"].ToString();
            sub_total = dr["sub_total"].ToString();
            expiry_date = dr["expiry_date"].ToString();
        }
        cn.Close();


        cn.Open();
        qry = "insert into Trainer_Invoice values('" + member_id + "','" + trainer_paid_id + "','" + trainer_name + "','" + fname + "','" + lname + "','" + email + "','" + address + "','" + mobile + "','" + DateTime.Now.ToString("dd-MM-yyyy") + "','" + plan_name + "','" + price + "','" + discount + "','" + sub_total + "','" + sgst + "','" + cgst + "','" + total_amount + "','TRAINER','" + expiry_date + "',1)";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        cn.Open();
        qry = "insert into Provide_Workout values('" + trainer_id + "','" + member_id + "','" + trainer_name + "','" + fname + "','" + lname + "','" + email + "','" + mobile + "','" + plan_name + "','" + DateTime.Now.ToString("dd-MM-yyyy") + "','" + expiry_date + "',0)";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        Session["member_id"] = Application["member_id"].ToString();
        Session["image"] = Application["image"].ToString();
        Session["email"] = Application["email"].ToString();

        Response.Redirect("UHome.aspx?Trainer=success");
    }
}