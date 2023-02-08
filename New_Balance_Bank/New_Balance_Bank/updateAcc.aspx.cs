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
    public partial class updateAcc : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from customer where A_Id=@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id",txtAcc.Text);
            using (SqlDataReader myReader = cmd.ExecuteReader())
            {
                while (myReader.Read())
                {
                    txtAcc.Text = myReader[0].ToString();
                    txtName.Text = myReader[1].ToString();
                    txtTitle.Text = myReader[2].ToString();
                    ddlType.SelectedItem.Text = myReader[3].ToString();
                    radioGen.DataValueField = myReader[4].ToString();
                    Dob.Text = myReader[5].ToString();
                    Nation.Text = myReader[6].ToString();
                    Padd.Text = myReader[7].ToString();
                    Phno.Text = myReader[8].ToString();
                    Nic.Text = myReader[9].ToString();
                    Eadd.Text = myReader[10].ToString();
                    Occup.Text = myReader[11].ToString();
                    Initdep.Text = myReader[12].ToString();
                }
            }
            con.Close();
            con.Dispose();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }
    }
}