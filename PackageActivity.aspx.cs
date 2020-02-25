using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppByPratibhaMaam
{
    public partial class PackageSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected DataTable selectData()
        {
            // using HR account of Oracle10g. 
            OracleConnection con = new OracleConnection("uid=visitnepal;pwd=2020;server=localhost");
            OracleDataAdapter da = new OracleDataAdapter("select * from jobs", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "jobs");
            return ds.Tables["jobs"];  // return a DataTable from DataSet
        }
    }
}