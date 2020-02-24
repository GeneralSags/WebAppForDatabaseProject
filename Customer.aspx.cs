using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppByPratibhaMaam
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDeleteFromGridClicked(object sender, EventArgs e)
        {
            VisitNepal2020.Delete();
        }

        protected void insertData(object sender, EventArgs e)
        {
            VisitNepal2020.Insert();
        }
    }
}