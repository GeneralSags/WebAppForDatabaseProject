using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppByPratibhaMaam
{
    public partial class Staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tbStaffPhone_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnDeleteFromGrid_Click(object sender, EventArgs e)
        {
            VisitNepal2020.Delete();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            VisitNepal2020.Insert();
        }
    }
}