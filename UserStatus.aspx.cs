using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
            Response.Redirect("/Account/login.aspx");

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CourseMasterDBConnectionString"].ConnectionString);
        conn.Open();
        string checkIsValidUserQuery = "select IsValidUser from UserData where UserName='" + Session["New"] + "'";
        SqlCommand checkIsValidComm = new SqlCommand(checkIsValidUserQuery, conn);

        int temp = Convert.ToInt32(checkIsValidComm.ExecuteScalar().ToString());
        conn.Close();
        if (temp != 1)
        {
            Notice.Text = "未获得使用权限";
        }
        else
        {
            Notice.Text = "已获得使用权限";
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGUID = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CourseMasterDBConnectionString"].ConnectionString);
            conn.Open();

            string insertQuery = "insert into WatchingList (WatchingUser,CourseName,ScheduleNumber,AddedTime,LastActionTime,LastActionMessage) values (@WUser ,@Cname ,@Snumber ,GETDATE() ,GETDATE() ,@LAmessage)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@WUser", Session["New"].ToString());
            com.Parameters.AddWithValue("@Cname", TextBoxCourseName.Text);
            com.Parameters.AddWithValue("@Snumber", TextBoxScheduleNumber.Text);
            com.Parameters.AddWithValue("@LAmessage", "Course received by Server, now monitoring.");

            com.ExecuteNonQuery();

            Response.Write("Registration is successful");
            conn.Close();
            Response.Redirect(Page.Request.Url.ToString(), true);
        }
        catch (Exception ex)
        {

            Response.Write("Error:" + ex.ToString());
        }
    }
    /*
    protected void GridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        con = new SqlConnection(ConfigurationSettings.AppSettings["connect"]);
        cmd.Connection = con;
        Label lbldeleteID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblstId");
        cmd.CommandText = "Delete from StudentRecord where StId='" + lbldeleteID.Text + "'";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        BindData();
    }
     */
}