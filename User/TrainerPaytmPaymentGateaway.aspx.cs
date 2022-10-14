using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Paytm;
using paytm;
using System.Data.SqlClient;
using System.Configuration;


public partial class User_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry, amount;
    int purchase_id;

    protected void Page_Load(object sender, EventArgs e)
    {
        Random order_id = new Random();
        int ordid = order_id.Next(100000, 999999);
        //string email = Session["email"].ToString();
        string tpid = Application["tpid"].ToString();

         cn.Open();
            qry = "select * from trainer_purchase where trainer_plan_id=" + tpid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                purchase_id = Convert.ToInt32(dr["trainer_purchase_id"].ToString());
                amount = dr["total_amount"].ToString();

                String merchantKey = "DtZB%t3RMr%aSLKy";
                Dictionary<string, string> parameters = new Dictionary<string, string>();
                parameters.Add("MID", "gpofmx02971340632629");
                parameters.Add("CHANNEL_ID", "WEB");
                parameters.Add("INDUSTRY_TYPE_ID", "Retail");
                parameters.Add("WEBSITE", "WEBSTAGING");
                parameters.Add("EMAIL", "email");
                parameters.Add("MOBILE_NO", "9737527273");
                parameters.Add("CUST_ID", "1");
                parameters.Add("ORDER_ID", purchase_id.ToString());
                parameters.Add("TXN_AMOUNT", amount);
                parameters.Add("CALLBACK_URL", "http://localhost:1086/User/InsertPaytmTrainer.aspx"); //This parameter is not mandatory. Use this to pass the callback url dynamically.

                string checksum = CheckSum.generateCheckSum(merchantKey, parameters);

                string paytmURL = "https://securegw-stage.paytm.in/theia/processTransaction?orderid=" + ordid;

                string outputHTML = "<html>";
                outputHTML += "<head>";
                outputHTML += "<title>Merchant Check Out Page</title>";
                outputHTML += "</head>";
                outputHTML += "<body>";
                outputHTML += "<center><h1>Please do not refresh this page...</h1></center>";
                outputHTML += "<form method='post' action='" + paytmURL + "' name='f1'>";
                outputHTML += "<table border='1'>";
                outputHTML += "<tbody>";
                foreach (string key in parameters.Keys)
                {
                    outputHTML += "<input type='hidden' name='" + key + "' value='" + parameters[key] + "'>";
                }
                outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>";
                outputHTML += "</tbody>";
                outputHTML += "</table>";
                outputHTML += "<script type='text/javascript'>";
                outputHTML += "document.f1.submit();";
                outputHTML += "</script>";
                outputHTML += "</form>";
                outputHTML += "</body>";
                outputHTML += "</html>";
                Response.Write(outputHTML);
            }
    }
}