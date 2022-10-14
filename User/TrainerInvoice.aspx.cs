using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_TrainerInvoice : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        string member_id = Session["member_id"].ToString();
        cn.Open();
        qry = "select * from Trainer_Invoice where trainer_invoice_id='" + Page.Request.QueryString["trainer_invoice_id"].ToString() + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            cn.Close();
            cn.Open();
            qry = "select * from Trainer_Invoice where trainer_invoice_id='" + Page.Request.QueryString["trainer_invoice_id"].ToString() + "'";
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
                lbl_trainer_paid_id.Text = dr["trainer_paid_id"].ToString();
                lbl_date.Text = dr["Date"].ToString();
                lbl_sub_total.Text = dr["subtotal"].ToString();
                lbl_expiry_date.Text = dr["expiry_date"].ToString();
                lbl_trainer_name.Text = dr["trainer_name"].ToString();

            }
            cn.Close();

            cn.Open();
            qry = "select * from trainer_paid where trainer_paid_id='" + lbl_trainer_paid_id.Text + "'";
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
            Response.Redirect("UHome.aspx?trainer_invoice_id=invalid");
        }
        cn.Close();

       

    }
    protected void btn_home_Click(object sender, EventArgs e)
    {
        Response.Redirect("UHome.aspx");
    }
}