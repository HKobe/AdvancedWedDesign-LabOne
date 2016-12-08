using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace COMP229_F2016_LESSON9
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
            try

            {
                //conn = new SqlConnection("Data Source = LAPTOP - LPU502DT\\SQLEXPRESS; Integrated Security = True;");
                //bindGrid();
            }
            catch (Exception exx)
            { }
            
        }
        public void bindGrid()
        {
            try
            {
                SqlConnection conn;
                DataSet dataSet = new DataSet();
                SqlDataAdapter adapter;
                if (true)// ViewState["Recipes"] == null
                {
                    string connectionString =
                        ConfigurationManager.ConnectionStrings["RecipesConnectionString"].ConnectionString;
                    //initialize connection
                    try
                    {
                        conn = new SqlConnection(connectionString);
                        adapter = new SqlDataAdapter("select RecipeID, CategoryID, CookingTime, numberOfServings, recipeDescription from Table", conn);

                        adapter.Fill(dataSet, "Table");

                        // adapter.SelectCommand.CommandText = "select EmployeeId, Name, MobilePhone from Employees";
                        // adapter.Fill(dataSet, "Employees");

                    }
                    catch (Exception e)
                    {

                        Response.Write(e.Message);
                    }
                    ViewState["Recipes"] = dataSet;
                }
                else
                {
                    dataSet = (DataSet)ViewState["Recipes"];
                }
            }
            catch (Exception ee)
            { }
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DataTable dt = ((DataSet)ViewState["Recipes"]).Tables["Recipes"];//System.Null.Reference EDIT
            GridViewRow row = GridView2.Rows[e.RowIndex]; //GridView2 Row
            int newRecipeID = Convert.ToInt32(((TextBox)row.Cells[0].Controls[1]).Text);
            string newRecipeName = (((TextBox)row.Cells[1].Controls[1]).Text);
            dt.Rows[e.RowIndex]["RecipeID"] = newRecipeID;
            dt.Rows[e.RowIndex]["NameOfRecipe"] = newRecipeName;
            GridView2.EditIndex = -1;
            bindGrid();


            SqlCommand cmd = new SqlCommand("update Recipe set RECIPEID='" + newRecipeID + "',RECIPENAME='" + newRecipeName, conn);


        }
    }
    /* protected void departmentsGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
      {
          DataTable dt = ((DataSet)ViewState["DorknozzleDataSet"]).Tables["Departments"];
          GridViewRow row = departmentsGrid.Rows[e.RowIndex]; //GridView Row 
          int newDepartmentId = Convert.ToInt32(((TextBox)row.Cells[0].Controls[1]).Text);
          string newDepartment = (((TextBox)row.Cells[1].Controls[1]).Text);
          dt.Rows[e.RowIndex]["DepartmentID"] = newDepartmentId;
          dt.Rows[e.RowIndex]["Department"] = newDepartment;
          departmentsGrid.EditIndex = -1;
          bindGrid();
      }*/

}
