using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Account_password_change : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["New"] == null)
            Response.Redirect("/Account/login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CourseMasterDBConnectionString"].ConnectionString);
            conn.Open();

      
                string checkPasswordQuery = "select password from UserData where UserName='" + Session["New"] + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBoxLoginPW.Text)
                {

                    SqlCommand changePW = new SqlCommand("update UserData set PSUPassword='"+TextBoxNewPSUPW.Text+"' where UserName='" + Session["New"] + "'",conn);
                    changePW.ExecuteNonQuery();
                    MSG.Text = "Successed. Redirecting to User Status page in 3 seconds.";
                    System.Threading.Thread.Sleep(3000);
                    Response.Redirect("/userstatus.aspx");
                }
                else
                {
                    MSG.Text = "Password is not correct.";
                    Response.Write("Password is not correct");
                }
  
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
    
}