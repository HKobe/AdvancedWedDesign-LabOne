using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string checkUser = "select count(*) from UserData where UserName='" + LoginUserTextBox.Text + "'";
        SqlCommand com = new SqlCommand(checkUser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select Password from UserData where UserName='" + LoginUserTextBox.Text + "'";
            SqlCommand passCom = new SqlCommand(checkPasswordQuery, conn);
            string password = passCom.ExecuteScalar().ToString().Replace(" ", "");
            if (password == LoginPasswordTextBox.Text)
            {
                Session["New"] = LoginUserTextBox.Text;
                Response.Write("Password is correct");
                Response.Redirect("Default.aspx");
                
            }
            else
            {
                Response.Write("Password is Incorrect");
            }
            if (LoginUserTextBox.Text == "admin" && LoginPasswordTextBox.Text == "admin123")
            {
                Response.Redirect("Manager.aspx");
            }
            
        }
        else
        {
            Response.Write("Username is Incorrect");
        }



    }
}