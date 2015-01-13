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
                if (password == TextBoxOldPW.Text)
                {

                    SqlCommand changePW = new SqlCommand("update UserData set password='"+TextBoxNewPW.Text+"' where UserName='" + Session["New"] + "'",conn);
                    changePW.ExecuteNonQuery();
                    MSG.Text = "Successed. Please re-login. Redirecting to login page in 3 seconds.";
                    System.Threading.Thread.Sleep(3000);
                    Session["New"] = null;
                    Response.Redirect("/Account/Login.aspx");
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