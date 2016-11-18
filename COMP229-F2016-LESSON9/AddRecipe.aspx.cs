using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_F2016_LESSON9
{
    public partial class AddRecipe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Ingrediants - Name , Quantity, Unit
            Ingrediant1.Name = " ";
            Ingrediant1.Quantity = " ";
            Ingrediant1.Unit = " ";

            Ingrediant2.Name = " ";
            Ingrediant2.Quantity = " ";
            Ingrediant2.Unit = " ";

            Ingrediant3.Name = " ";
            Ingrediant3.Quantity = " ";
            Ingrediant3.Unit = " ";

            Ingrediant4.Name = " ";
            Ingrediant4.Quantity = " ";
            Ingrediant4.Unit = " ";

            Ingrediant5.Name = " ";
            Ingrediant5.Quantity = " ";
            Ingrediant5.Unit = " ";

            Ingrediant6.Name = " ";
            Ingrediant6.Quantity = " ";
            Ingrediant6.Unit = " ";

            Ingrediant7.Name = " ";
            Ingrediant7.Quantity = " ";
            Ingrediant7.Unit = " ";

            Ingrediant8.Name = " ";
            Ingrediant8.Quantity = " ";
            Ingrediant8.Unit = " ";

            Ingrediant9.Name = " ";
            Ingrediant9.Quantity = " ";
            Ingrediant9.Unit = " ";

            Ingrediant10.Name = " ";
            Ingrediant10.Quantity = " ";
            Ingrediant10.Unit = " ";

            Ingrediant11.Name = " ";
            Ingrediant11.Quantity = " ";
            Ingrediant11.Unit = " ";

            Ingrediant12.Name = " ";
            Ingrediant12.Quantity = " ";
            Ingrediant12.Unit = " ";

            Ingrediant13.Name = " ";
            Ingrediant13.Quantity = " ";
            Ingrediant13.Unit = " ";

            #endregion
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                List<StoreRecipeList> tempList = (List<StoreRecipeList>)Application["Recipes"];
                StoreRecipeList tempRecipe = new StoreRecipeList();
                tempRecipe.NameOfRecipe = RecipeTxtBox.Text;
                tempRecipe.SubmittedBy = SubmittedByTxtbox.Text;
                tempRecipe.Category = CategoryTxtBox.Text;
                tempRecipe.CookingTime = CookingTimeTxtBox.Text;
                tempRecipe.NumberOfServings = NumberOfServingsTxtBox.Text;
                tempRecipe.RecipeDescription = RecipeDescriptionTxtBox.Text;
                tempList.Add(tempRecipe);
                Application["Recipes"] = tempList;

                btnSubmit.Text = "Submit";
            }
            else
            {
                btnSubmit.Text = "Fix the error and click me again! ";
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            foreach (var items in Page.Controls)
            {
                if (items is TextBox)
                {
                    ((TextBox)items).Text = "";
                }
            }
            
        }
    }
}