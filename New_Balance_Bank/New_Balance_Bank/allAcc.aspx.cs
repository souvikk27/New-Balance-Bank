using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace New_Balance_Bank
{
    public partial class allAcc : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                showAcc();
            }
        }

        public void showAcc()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
            con.Open();
            string query = "select * from customer";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            con.Close();
        }

    }
}