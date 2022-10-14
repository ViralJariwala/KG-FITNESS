using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
using System.IO;

public partial class User_ValidateOTP : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry,fname,lname;
    int status;
    int p;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        cn.Open();
        qry = "select * from Member where otp='" + txt_otp.Text + "' and member_id='" + Session["member_id"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            cn.Close();
            cn.Open();
            qry = "update Member set status=1 where member_id='" + Session["member_id"] + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("UHome.aspx");
        }
        else
        {
            cn.Close();
            Label1.Text = "Invalid OTP";
        }
    }
    protected void btn_resend_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        cn.Open();
        qry = "select * from Member where member_id='" + Session["member_id"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            p = Convert.ToInt32(dr["otp"]);
            MailMessage mail = new MailMessage();
            string mailid = Session["email"].ToString();
            fname = dr["fname"].ToString();
            lname = dr["lname"].ToString();
            mail.To.Add(mailid);
            mail.From = new MailAddress("kgfitness7@gmail.com");
            mail.Subject = "Account Verfication";
           // string Body = "Your OTP is " + p;
            mail.Body = CreateBody();
           // mail.Body = Body;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
            //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("kgfitness7@gmail.com", "Viral@008");
            smtp.Port = 587;  //465
            smtp.EnableSsl = true;
            smtp.Send(mail);
            Label1.Text = "Check your EmailID....";

        }
    }


    private string CreateBody()
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("../OTP/Template.html")))
        {

            body = reader.ReadToEnd();

        }

        body = body.Replace("{fname}", fname); //replacing Parameters

        body = body.Replace("{lname}", lname);

        body = body.Replace("{otp}", p.ToString());

        return body;

    }
}