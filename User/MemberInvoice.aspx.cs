using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_MemberInvoice : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        string member_id = Session["member_id"].ToString();
        cn.Open();
        qry = "select * from invoice where invoice_id='" + Page.Request.QueryString["ivoiceid"].ToString() + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            cn.Close();
            cn.Open();
            qry = "select * from Invoice where invoice_id='" + Request.QueryString["ivoiceid"].ToString() +"'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lbl_name.Text = dr["fname"].ToString();
                lbl_lname.Text = dr["lname"].ToString();
                lbl_email.Text = dr["email"].ToString();
                lbl_address.Text = dr["address"].ToString();
                lbl_phoneno.Text = dr["mobile"].ToString();
                lbl_plan_name.Text = dr["plan_name"].ToString();
                lbl_price.Text = dr["price"].ToString();
                lbl_discount.Text = dr["discount"].ToString();
                lbl_total1.Text = dr["total"].ToString();
                lbl_sgst.Text = dr["sgst"].ToString();
                lbl_cgst.Text = dr["cgst"].ToString();
                lbl_total.Text = dr["total"].ToString();
                lbl_membership_paid_id.Text = dr["membership_paid_id"].ToString();
                lbl_date.Text = dr["Date"].ToString();
                lbl_sub_total.Text = dr["subtotal"].ToString();
                lbl_reason.Text = dr["reason"].ToString();
                lbl_expiry_date.Text = dr["expiry_date"].ToString();
                
            }
            cn.Close();
            cn.Open();
            qry = "select * from membership_paid where membership_paid_id='" + lbl_membership_paid_id.Text +"'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lbl_payment_method.Text = dr["payment_method"].ToString();
            }
            cn.Close();




        
        }
        else
        {

            Response.Redirect("UHome.aspx?ivoiceid=invalid");

        }

        cn.Close();
        //cn.Open();
        //qry = "select * from Member where member_id='" + member_id + "'";
        //cmd = new SqlCommand(qry, cn);
        //dr = cmd.ExecuteReader();
        //if (dr.HasRows)
        //{
        //    dr.Read();
        //    lbl_name.Text = dr["fname"].ToString();
        //    lbl_lname.Text = dr["lname"].ToString();
        //    lbl_email.Text = dr["email"].ToString();
        //    lbl_address.Text = dr["address"].ToString();
        //    lbl_phoneno.Text = dr["mobile"].ToString();
        //}
        //cn.Close();


        //cn.Open();
        //qry = "select * from Membership_Paid where member_id='" + member_id + "'";
        //cmd = new SqlCommand(qry, cn);
        //dr = cmd.ExecuteReader();
        //if (dr.HasRows)
        //{
        //    dr.Read();
        //    lbl_plan_name.Text = dr["plan_name"].ToString();
        //    lbl_price.Text = dr["price"].ToString();
        //    lbl_discount.Text = dr["discount"].ToString();
        //    lbl_total1.Text = dr["total_amount"].ToString();
        //    lbl_sgst.Text = dr["sgst"].ToString();
        //    lbl_cgst.Text = dr["cgst"].ToString();
        //    lbl_total.Text = dr["total_amount"].ToString();
        //    lbl_membership_paid_id.Text = dr["membership_paid_id"].ToString();
        //    lbl_date.Text = dr["Date"].ToString();
        //    lbl_sub_total.Text = dr["sub_total"].ToString();
        //}
        //cn.Close();


        //cn.Open();
        //qry = "select * from Invoice where member_id='" + member_id + "'";
        //cmd = new SqlCommand(qry, cn);
        //dr = cmd.ExecuteReader();
        //if (dr.HasRows)
        //{
        //    cn.Close();
        //    //Response.Redirect("Invoice.aspx?member_id=" + member_id);
        //}

        //else
        //{
        //    cn.Close();
        //    cn.Open();
        //    qry = "insert into Invoice values('" + member_id + "','" + lbl_name.Text + "','" + lbl_lname.Text + "','" + lbl_email.Text + "','" + lbl_address.Text + "','" + lbl_phoneno.Text + "','" + lbl_date.Text + "','" + lbl_plan_name.Text + "','" + lbl_price.Text + "','" + lbl_discount.Text + "','" + lbl_sub_total.Text + "','" + lbl_sgst.Text + "','" + lbl_cgst.Text + "','" + lbl_total.Text + "')";
        //    cmd = new SqlCommand(qry, cn);
        //    cmd.ExecuteNonQuery();
        //    cn.Close();
        //}
    }
    protected void btn_home_Click(object sender, EventArgs e)
    {
        Response.Redirect("UHome.aspx");
    }
}