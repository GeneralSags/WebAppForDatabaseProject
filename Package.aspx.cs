using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppByPratibhaMaam
{
    public partial class Package : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }

        protected void btnDeleteFromGrid_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
        }
    }
}