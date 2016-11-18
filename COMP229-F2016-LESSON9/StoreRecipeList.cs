using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace COMP229_F2016_LESSON9
{
    public class StoreRecipeList
    {
        
        public string NameOfRecipe { get; set; }
        public string SubmittedBy { get; set; }
        public string Category { get; set; }
       public string CookingTime{ get; set; }
        public string NumberOfServings { get; set; }
        public string RecipeDescription { get; set; }

        public List<Ingrediants> IG {get; set;}


    }
}