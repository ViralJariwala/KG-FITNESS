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
    string qry, plan_name;
    int discount, price, sgst, cgst, total_amount, sub_total,trainer_id;
    string fname, lname, email, address, mobile;
    string trainer_paid_id, expirydate;

    protected void Page_Load(object sender, EventArgs e)
    {
        string member_id = Application["member_id"].ToString();
        string trainer_plan_id = Application["tpid"].ToString();

        cn.Open();
        qry = "select * from trainer_purchase where trainer_plan_id='" + trainer_plan_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            plan_name = dr["plan_name"].ToString();
            price = Convert.ToInt32(dr["price"].ToString());
            discount = Convert.ToInt32(dr["discount"].ToString());
            sgst = Convert.ToInt32(dr["sgst"].ToString());
            cgst = Convert.ToInt32(dr["cgst"].ToString());
            sub_total = Convert.ToInt32(dr["sub_total"].ToString());
            total_amount = Convert.ToInt32(dr["total_amount"].ToString());
            trainer_id = Convert.ToInt32(dr["trainer_id"].ToString());
        }
        cn.Close();


        cn.Open();
        qry = "select * from trainer_paid where trainer_plan_id='" + trainer_plan_id + "'AND member_id='" + member_id + "'";
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
            qry = "select * from trainer_plan where trainer_plan_id='" + trainer_plan_id + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                expirydate = dr["plan_name"].ToString().Substring(0, 2).Trim();
            }
            cn.Close();

            cn.Close();
            cn.Open();
            qry = "insert into Trainer_Paid values('" + trainer_plan_id + "','" + trainer_id + "','" + member_id + "','" + plan_name + "','" + price + "','" + discount + "','" + sgst + "','" + cgst + "','" + sub_total + "','" + total_amount + "','PAYTM','" + DateTime.Now.ToString("dd-MM-yyyy") + "','" + DateTime.Now.AddMonths(Convert.ToInt32(expirydate)).ToString("yyyy-MM-dd") + "',1)";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

            cn.Open();
            qry = "select * from Trainer_Paid where trainer_plan_id='" + trainer_plan_id + "' and member_id='" + member_id + "' and date=" + DateTime.Now.ToString("dd-MM-yyyy");
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                trainer_paid_id = dr["trainer_paid_id"].ToString();
            }
            cn.Close();


            cn.Open();
            qry = "delete Trainer_Purchase where member_id='" + member_id + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("InsertTrainerPaytmInvoice.aspx?tpid=" + trainer_paid_id + "&tid=" + trainer_id);
        }

        cn.Close();
    }
}