using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Claims;
using System.Security.Principal;
using System.Web.Security;

public partial class MasterPage : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            LabelUserName.Text = "Welcome, ";
            HyperLinkUserName.Text = Session["New"].ToString();
            ButtonLog.Text = "Log out";
        }
        else
        {
            ButtonLog.Text = "Log in";
        }
    }

    protected void ButtonLog_Click(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            Session["New"] = null;
            Response.Redirect("/Account/login.aspx");
        }
        else
        {
            Response.Redirect("/Account/login.aspx");
        }
    }
}