using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace RepeaterControlWebForm
{
    public partial class RepeaterControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable ds = GetData();

            GridView1.DataSource = ds;
            GridView1.DataBind();

           // Repeater1.DataSource = ds;
            //GridView1.DataBind();
        }
        private DataTable GetData()
        {
            string CS = ConfigurationManager.ConnectionStrings["Vaibhav test dbConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from Users", con);
                DataTable ds = new DataTable();
                da.Fill(ds);
                return ds;
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}