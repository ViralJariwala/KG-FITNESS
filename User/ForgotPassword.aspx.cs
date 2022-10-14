using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.IO;

public partial class User_ForgotPassword : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_forgot_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Member where email='" + txt_email.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            string pass = dr["password"].ToString();
            MailMessage mail = new MailMessage();
            string mailid = txt_email.Text;
            mail.To.Add(mailid);
            mail.From = new MailAddress("kgfitness7@gmail.com");
            mail.Subject = "Forgot Password";
            //string Body = "Your Password is " + pass;
            mail.Body = CreateBody();
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
            //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("kgfitness7@gmail.com", "Viral@008");
            smtp.Port = 587;  //465
            smtp.EnableSsl = true;
            smtp.Send(mail);
            Session["email"] = dr["email"].ToString();
            Response.Redirect("~/User/ConfirmPassword.aspx");
        }
        else
        {
            Label1.Text = "Invalid EmailID.!";
        }
        cn.Close();
    }

    private string CreateBody()
    {
        string pass = dr["password"].ToString();
        string fname = dr["fname"].ToString();
        string lname = dr["lname"].ToString();
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("../FORGOT PASSWORD/FORGOTUSER.html")))
        {

            body = reader.ReadToEnd();

        }

         body = body.Replace("{fname}", fname ); //replacing Parameters

        body = body.Replace("{lname}", lname);

        body = body.Replace("{pass}", pass);

        return body;
    }
}