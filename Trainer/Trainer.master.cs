using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Trainer_Trainer : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        try
        {
            Image1.ImageUrl = "~/Admin/TrainerPhoto/" + Session["image"];
            Session["tid"].ToString();
            Session["email"].ToString();
            Session["image"].ToString();
        }
        catch (Exception ex)
        {
            Response.Redirect("LogIn.aspx");
        }
    }
}
