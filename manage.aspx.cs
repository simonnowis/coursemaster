using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
            Response.Redirect("/index.aspx");
        else
        if (Session["New"].ToString() != "admin")
        {
            Response.Redirect("/index.aspx");
        }
    }
}