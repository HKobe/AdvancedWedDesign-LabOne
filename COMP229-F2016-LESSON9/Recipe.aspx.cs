﻿using System;
using System.Collections.Generic;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_F2016_LESSON9
{
    public partial class Recipe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<StoreRecipeList> tempList = (List<StoreRecipeList>)Application["Recipes"];
            GridView1.DataSource = tempList;
            GridView1.DataBind();
        }
    }
}