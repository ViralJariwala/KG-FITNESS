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
    int discount, price, sgst, cgst, total_amount,sub_total;
    string fname, lname, email, address, mobile;
    string membership_paid_id,expirydate;

    protected void Page_Load(object sender, EventArgs e)
    {
        string member_id = Application["member_id"].ToString();
        string plan_id = Application["pid"].ToString();
        
       
        cn.Open();
        qry = "select * from membership_purchase where plan_id='" + plan_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            dr.Read();
            plan_name =  dr["plan_name"].ToString();
            price = Convert.ToInt32(dr["price"].ToString());
            discount = Convert.ToInt32(dr["discount"].ToString());
            sgst = Convert.ToInt32(dr["sgst"].ToString());
            cgst = Convert.ToInt32(dr["cgst"].ToString());
            sub_total = Convert.ToInt32(dr["sub_total"].ToString());
            total_amount = Convert.ToInt32(dr["total_amount"].ToString());
        }
        cn.Close();


        cn.Open();
        qry = "select * from membership_paid where plan_id='" + plan_id + "'AND member_id='" + member_id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
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
            qry = "select * from membership_plan where plan_id='" + plan_id + "'";
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
            qry = "insert into Membership_Paid values('" + plan_id + "','" + member_id + "','" + plan_name + "','" + price + "','" + discount + "','" + sgst + "','" + cgst + "','" + sub_total + "','" + total_amount + "','PAYTM','" + DateTime.Now.ToString("dd-MM-yyyy") + "','" + DateTime.Now.AddMonths(Convert.ToInt32(expirydate)).ToString("yyyy-MM-dd") + "',1)";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

            cn.Open();
            qry = "select * from membership_paid where plan_id='" + plan_id + "' and member_id='" + member_id + "' and date=" + DateTime.Now.ToString("dd-MM-yyyy");
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                membership_paid_id = dr["membership_paid_id"].ToString();
            }
            cn.Close();


            cn.Open();
            qry = "delete Membership_Purchase where member_id='" + member_id + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("InsertPaytmInvoice.aspx?membership_paid_id=" + membership_paid_id);
        }

        cn.Close();
  
    }
}