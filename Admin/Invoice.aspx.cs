using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        string invoice_id = Request.QueryString.Get("invoice_id");
        cn.Open();
        qry = "select * from Invoice where invoice_id='" + invoice_id + "'";
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
        qry = "select * from membership_paid where membership_paid_id='" + lbl_membership_paid_id.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lbl_payment_method.Text = dr["payment_method"].ToString();
        }
        cn.Close();
        

    }
}