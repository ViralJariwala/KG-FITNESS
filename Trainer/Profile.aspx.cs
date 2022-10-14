using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Trainer_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = "~/Admin/TrainerPhoto/" + Session["image"];
    }
    protected void btn_edit_profile_Click(object sender, EventArgs e)
    {
        Response.Redirect("Setting.aspx");
    }
}