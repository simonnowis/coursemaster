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
        if (IsPostBack)
        {       //Data Source=coursemaster.xicp.net;Initial Catalog=elion;Persist Security Info=True;User ID=sa;Password=***********
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from UserData where UserName='" + TextBoxUserName.Text + "'";
            SqlCommand com = new SqlCommand(checkuser,conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp >= 1)
            {
                // User already exist
            }
            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool userNameAvailable = true;
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CourseMasterDBConnectionString"].ConnectionString);
            conn.Open();

            string checkuser = "select count(*) from UserData where UserName='" + TextBoxUserName.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp >= 1)
            {
                userNameAvailable = false;// User already exist
                ErrorMSG.Text = "User name already exist, try another one.";
            }
            conn.Close();
        }
        catch(Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
        
        if (userNameAvailable)
        try
        {
            Guid newGUID = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CourseMasterDBConnectionString"].ConnectionString);
            conn.Open();

            string insertQuery = "insert into UserData (Id, UserName,Email,Password,PSUID,PSUPassword) values (@ID ,@Uname ,@email ,@password ,@psuid ,@psupw)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@ID", newGUID.ToString());
            com.Parameters.AddWithValue("@Uname", TextBoxUserName.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@password", TextBoxPW.Text);
            com.Parameters.AddWithValue("@psuid", TextBoxPSUID.Text);
            com.Parameters.AddWithValue("@psupw", TextBoxPSUPW.Text);

            com.ExecuteNonQuery();
            
            Response.Write("Registration is successful");
            Session["New"] = TextBoxUserName.Text;
            Response.Redirect("~/Manage.aspx");
            conn.Close();
        }
        catch(Exception ex)
        {

            Response.Write("Error:" + ex.ToString());
        }
    }
}