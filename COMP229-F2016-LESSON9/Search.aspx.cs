using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_F2016_LESSON9
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(Page.IsPostBack)
            {
                
            }
            

        }

        public void Method()
        {
            string connectionString = "DATA SOURCE=oracle1.centennialcollege.ca:1521/SQLD;PASSWORD=password;USER ID=COMP214F16_003_P_8";
            using (OracleConnection connection = new OracleConnection(connectionString))
            {

                OracleCommand insert = new OracleCommand("insert into TABLE(name), @name", connection);
                insert.Parameters.AddWithValue("@name", "Name.Text");

                try
                {
                    connection.Open();
                    insert.ExecuteNonQuery();
                    Console.WriteLine("Connected");
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                
                
                
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=LAPTOP-LPU502DT\SQLEXPRESS;Initial Catalog=Recipes;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand insert = new SqlCommand("insert into Dinner(DinnerID, Dinner_Name, Dinner_Description) " +
                    "values (@id, @name, @desc)", connection);
                insert.Parameters.AddWithValue("@id", 5);
                insert.Parameters.AddWithValue("@name", DDLCat.Text);
                insert.Parameters.AddWithValue("@desc", DDLName.Text);

                try
                {
                    connection.Open();
                    insert.ExecuteNonQuery();
                    Label1.Text = "Added";
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                    
                }
            }


        }

        protected void DDLName_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DDLCat_DataBound(object sender, EventArgs e)
        {
            DDLCat.Items.Insert(0, "All");
        }
    }
}