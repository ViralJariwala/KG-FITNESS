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


public partial class User_SignUp : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry,fname;
    Random ran = new Random();
    int p;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_signup_Click(object sender, EventArgs e)
    {
        p = ran.Next(0000,9999);

        MailMessage mail = new MailMessage();
        string mailid = txt_email.Text;
        mail.To.Add(mailid);
        mail.From = new MailAddress("kgfitness7@gmail.com");
        mail.Subject = "Account Verfication";
        //string Body = "Your OTP is " + p;
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
        Label1.Text = "Check your EmailID....";
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                fname = FileUpload1.FileName;
                ViewState["fname"] = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/MemberPhoto/" + ViewState["fname"]));
                Label1.Text = "File Uploaded Successfully...!!";

                cn.Open();
                qry = "select email from Member where email='" + txt_email.Text + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Text = "EmailID is already used";
                }
                else
                {
                    cn.Close();
                    cn.Open();
                    qry = "insert into Member values('" + txt_fname.Text + "','" + txt_lname.Text + "','" + txt_address.Text + "','" + txt_email.Text + "','" + txt_password.Text + "','" + txt_dob.Text + "','" + Ddl_gender.SelectedItem.Value + "','" + ddl_state.SelectedItem.Value + "','" + ddl_city.SelectedItem.Value + "','" + txt_height.Text + "','" + txt_weight.Text + "','" + txt_mobile.Text + "','" + fname + "','" + p + "','0')";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("../User/SignIn.aspx");
                }


                    
            }
            else
            {
                Label1.Text = "Please Select Only JPG Or JPEG or PNG File";
            }
        }
        else
        {
            Label1.Text = "Please Select A File..!!";
        }
    }

    private string CreateBody()
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("../OTP/Template.html")))
        {

            body = reader.ReadToEnd();

        }

        body = body.Replace("{fname}", txt_fname.Text); //replacing Parameters

        body = body.Replace("{lname}", txt_lname.Text);

        body = body.Replace("{otp}", p.ToString());

        return body;

    }   
}