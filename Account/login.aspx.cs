using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Account_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
        conn.Open();

        string checkuser = "select count(*) from UserData where UserName='" + TextBoxLoginUserName.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select password from UserData where UserName='" + TextBoxLoginUserName.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ","");
            if (password == TextBoxLoginPW.Text)
            {
                Session["New"] = TextBoxLoginUserName.Text;
                Response.Write("Password is correct");
                ErrorMSG.Text = "Password is correct";
                Response.Redirect("/manage.aspx");
            }
            else
            {
                Response.Write("Password is not correct");
                ErrorMSG.Text = "Password is not correct";
            }
        }
        else
        {

            Response.Write("Username does not exist");
            ErrorMSG.Text = "Username does not exist";
        }
        conn.Close();
    }
}