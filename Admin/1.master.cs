using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_1 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        try
        {
            Image1.ImageUrl = "~/Admin/AdminImage/" + Session["profile"];
            Session["Aid"].ToString();
            Session["profile"].ToString();
        }
        catch (Exception ex)
        {
            Response.Redirect("LogIn.aspx");
        }
    }
}
