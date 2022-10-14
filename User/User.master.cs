using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = "~/MemberPhoto/" + Session["image"];

        try
        {
            Session["image"].ToString();
            Session["member_id"].ToString();
            Session["email"].ToString();
        }
        catch (Exception ex)
        {
            Response.Redirect("SignIn.aspx");
        }
    }
}
