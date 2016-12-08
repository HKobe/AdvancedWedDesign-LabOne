using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Configuration;
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
            if (Page.IsPostBack)
            {

            }
            

        }


        private void LoadCategories()
        {
            //DataTable categoryID = new DataTable();
            //string connectionString = @"Data Source=LAPTOP-LPU502DT\SQLEXPRESS;Initial Catalog=Recipes;Integrated Security=True";
            //using (SqlConnection connection = new SqlConnection(connectionString))
            //{
            //    try
            //    {
            //       // SqlDataAdapter adapter = new SqlDataAdapter("Select CategoryID FROM Recipe", connection);
            //        //adapter.Fill(categoryID);
            //        //DDLCat.DataSource = category;
            //        //DDLCat.DataTextField = "CategoryID";
            //        //DDLCat.DataBind();
            //    }
            //    catch (Exception ex)
            //    {
            //        lblResult.Text = ex.Message;
            //    }
            //}

            }
                    
        
            private void LoadSubmittedBy()
        { 
            //DataTable SubmittedBy = new DataTable();
            //string connectionString = @"Data Source=LAPTOP-LPU502DT\SQLEXPRESS;Initial Catalog=Recipes;Integrated Security=True";
            //using (SqlConnection connection = new SqlConnection(connectionString))
            //{
            //    try
            //    {
            //        SqlDataAdapter adapter = new SqlDataAdapter("Select SUBMITTEDBY FROM Recipe", connection);
            //        adapter.Fill(SubmittedBy);
            //        DDL.DataSource = SubmittedBy;
            //        DDLCat.DataTextField = "SubmittedBy";
            //        DDLCat.DataBind();
            //    }
            //    catch (Exception ex)
            //    {
            //        lblResult.Text = ex.Message;
            //    }


            //}
        }
        private void LoadNames()
        {
            //DataTable NameOfRecipe = new DataTable();
            //string connectionString = @"Data Source=LAPTOP-LPU502DT\SQLEXPRESS;Initial Catalog=Recipes;Integrated Security=True";
            //using (SqlConnection connection = new SqlConnection(connectionString))
            //{
            //    try
            //    {
            //        SqlDataAdapter adapter = new SqlDataAdapter("Select NAMEOFRECIPE FROM Recipe", connection);
            //        adapter.Fill(NameOfRecipe);
            //        DDLCat.DataSource = NameOfRecipe;
            //        DDLCat.DataTextField = "NameOfRecipe";
            //        DDLCat.DataBind();
            //    }
            //    catch (Exception ex)
            //    {
            //        lblResult.Text = ex.Message;
            //    }
            //}

            }
        /// <summary>
        /// An Oracle Connection Method
        /// </summary>
        public void Method()
        {
            //string connectionString = "DATA SOURCE=oracle1.centennialcollege.ca:1521/SQLD;PASSWORD=password;USER ID=COMP214F16_003_P_8";
            //using (OracleConnection connection = new OracleConnection(connectionString))
            //{

            //    OracleCommand insert = new OracleCommand("insert into TABLE(name), @name", connection);
            //    insert.Parameters.AddWithValue("@name", "Name.Text");

            //    try
            //    {
            //        connection.Open();
            //        insert.ExecuteNonQuery();
            //        Console.WriteLine("Connected");
            //    }
            //    catch (Exception ex)
            //    {
            //        Console.WriteLine(ex.Message);
            //    }

            //}
        }
        /// <summary>
        /// Submit Button Event Handler
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=LAPTOP-LPU502DT\SQLEXPRESS;Initial Catalog=Recipes;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand select = new SqlCommand("select * from recipe", connection);


                try
                {
                    connection.Open();
                    SqlDataReader dr = select.ExecuteReader();
                   // lblResult.Text = "Added";
                }
                catch (Exception ex)
                {
                    //lblResult.Text = ex.Message;

                }
            }


        }

        protected void DDLName_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DDLCat_DataBound(object sender, EventArgs e)
        {
            //DDLCat.Items.Insert(0, new ListItem("Select All", "0"));
        }
        protected void DDLSub_DataBound(object sender, EventArgs e)
        {
            //DDLSub.Items.Insert(0, new ListItem("Select All", "0"));
        }
        protected void DDLName_DataBound(object sender, EventArgs e)
        {
            //DDLName.Items.Insert(0, new ListItem("Select All", "0"));
        }
    }
}