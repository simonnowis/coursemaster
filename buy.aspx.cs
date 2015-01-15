using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class howtouse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BBY6SSR8P8UCQ");
    }
}