using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class RegistrationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select count(*) from UserData where UserName='" + UsrTxtBox.Text + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                lblResult.Text = "User already exists";
            }

            conn.Close();

        }
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGUID = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "INSERT into UserData (ID,UserName,Email,Password,Country) values (@ID , @Uname , @email ,  @pass , @country )";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@ID", newGUID.ToString());
            com.Parameters.AddWithValue("@Uname", UsrTxtBox.Text);
            com.Parameters.AddWithValue("@email", EmailTextBox.Text);
            com.Parameters.AddWithValue("@pass", PasswordTextBox.Text);
            com.Parameters.AddWithValue("@country", DDLCountry.SelectedItem.ToString());
            com.ExecuteNonQuery();
            Response.Write("Registration is Succesful!");
            Response.Redirect("Default.aspx");

            conn.Close();
        }
        catch (Exception ex)
        {
            lblResult.Text = ex.Message;
        }
    }
}