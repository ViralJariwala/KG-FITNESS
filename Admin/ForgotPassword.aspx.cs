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

public partial class Admin_ForgotPassword : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_submit_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from admin where email='" + Txt_Email.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            string pass = dr["password"].ToString();
            MailMessage mail = new MailMessage();
            string mailid = Txt_Email.Text;
            mail.To.Add(mailid);
            mail.From = new MailAddress("kgfitness7@gmail.com");
            mail.Subject = "Forgot Password";
           // string Body = "Your Password is " + pass;
            mail.Body = CreateBody();
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
            //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("kgfitness7@gmail.com", "Viral@008");
            smtp.Port = 587;  //465 587
            smtp.EnableSsl = true;
            smtp.Send(mail);
            Session["email"] = dr["email"].ToString();
            Response.Redirect("~/Admin/ConfirmPassword.aspx");
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
        string name = dr["name"].ToString();
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("../FORGOT PASSWORD/FORGOT.html")))
        {

            body = reader.ReadToEnd();

        }

        body = body.Replace("{name}", name); //replacing Parameters


        body = body.Replace("{pass}", pass);

        return body;
    }
}