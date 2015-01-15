using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class paid : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["New"] == null)
            Response.Redirect("/Account/login.aspx");
    

        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CourseMasterDBConnectionString"].ConnectionString);
            conn.Open();


                    SqlCommand changeValid = new SqlCommand("update UserData set IsValidUser=1 where UserName='" + Session["New"] + "'",conn);
                    changeValid.ExecuteNonQuery();
            conn.Close();        
                    Response.Redirect("/UserStatus.aspx");
                    Response.Write("success");
  
            
        }
        catch (Exception ex)
        {
            Response.Write("Error:"+ex.ToString()); 
        }

    }
}