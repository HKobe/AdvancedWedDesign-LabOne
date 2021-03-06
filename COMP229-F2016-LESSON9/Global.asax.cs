﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace COMP229_F2016_LESSON9
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            
            
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles); 
            if(Application["Recipes"] == null)
            {
                Application["Recipes"] = new List<StoreRecipeList>();
            }           
           
        }
        void Application_Error(object sender, EventArgs e) 
        {
            Exception myEx = Server.GetLastError();
            String RedirectUrlString = "~/Error.aspx?InnerErr=" +
                   myEx.InnerException.Message.ToString() + "&Err=" + myEx.Message.ToString();
            Response.Redirect(RedirectUrlString);
        }
    }
}
//Hassan Kobeissi - 300847239