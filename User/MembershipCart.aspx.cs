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
    Double price,discount,total,sub_total,cgst,sgst,final_total;

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    string member_id = Session["member_id"].ToString();
        //    string plan_id = Request.QueryString.Get("pid");
        //    string membership_purchase_id = Request.QueryString.Get("mpid");
            
        //        cn.Open();
        //        qry = "select * from membership_purchase where plan_id='" + plan_id + "' and member_id='" + member_id + "'";
        //        cmd = new SqlCommand(qry, cn);
        //        dr = cmd.ExecuteReader();
        //        if (dr.HasRows)
        //        {
        //          dr.Read();
        //          price = Convert.ToInt32(dr["price"]);
        //          discount = Convert.ToInt32(dr["discount"]);
        //          total = Convert.ToInt32(dr["total_amount"]);

        //        }
        //        sub_total = price - discount;
        //        cgst = sub_total * 2.5 / 100;
        //        sgst = sub_total * 2.5 / 100;
        //        final_total = sub_total + cgst + sgst; 
        //        lbl_sub_total.Text = price.ToString();
        //        lbl_discount.Text = discount.ToString();
        //        lbl_total.Text = final_total.ToString();
        //        lbl_cgst.Text = cgst.ToString();
        //        lbl_sgst.Text = sgst.ToString();


        //        lbl_cgst.Text = cgst.ToString();

        //        cn.Close();
        //        cn.Open();
        //        qry = "update Membership_Purchase set sgst='" + lbl_sgst.Text + "',cgst='" + lbl_cgst.Text + "',total_amount='" + lbl_total.Text + "'where plan_id='" + plan_id + "' and member_id='" + member_id + "'";
        //        cmd = new SqlCommand(qry, cn);
        //        cmd.ExecuteNonQuery();
        //        cn.Close();
                
        //}
    }
    //protected void btn_procced_to_checkout_Click(object sender, EventArgs e)
    //{
    //    string membership_purchase_id = Request.QueryString.Get("mpid");
    //    string plan_id = Request.QueryString.Get("pid");
    //    Response.Redirect("Payment.aspx?pid=" + plan_id );
    //}
    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "checkout")
        {
            string membership_purchase_id = Request.QueryString.Get("mpid");
            string plan_id = Request.QueryString.Get("pid");
            Response.Redirect("Payment.aspx?pid=" + plan_id );
        }
    }
}