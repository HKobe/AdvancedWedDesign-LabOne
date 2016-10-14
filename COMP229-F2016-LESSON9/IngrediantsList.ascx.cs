using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_F2016_LESSON9
{
    public partial class IngrediantsList : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string Name
        {
            get { return NameTxtBox.Text; }
            set
            {
                NameTxtBox.Text = value;
            }
        }
        public string Quantity
        {
            get
            {
                return QuantityTxtBox.Text;
            }
            set
            {
                QuantityTxtBox.Text = value;
            }
        }
        public string Unit
        {
            get
            {
                return UnitTxtBox.Text;
            }
            set
            {
                UnitTxtBox.Text = value;
            }
        }
    }
}