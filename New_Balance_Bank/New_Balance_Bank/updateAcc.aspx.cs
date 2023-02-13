using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;

namespace New_Balance_Bank
{
    public partial class updateAcc : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

       

        public void clear()
        {
            txtAcc.Text = "";
            txtName.Text = "";
            txtTitle.Text = "";
            ddlType.ClearSelection();
            radioGen.ClearSelection();
            Dob.Text = "";
            Nation.Text = "";
            Padd.Text = "";
            Phno.Text = "";
            Nic.Text = "";
            Eadd.Text = "";
            Occup.Text = "";
            Initdep.Text = "";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from customer where A_Id=@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", txtAcc.Text);
            using (SqlDataReader myReader = cmd.ExecuteReader())
            {
                while (myReader.Read())
                {
                    txtAcc.Text = myReader[0].ToString();
                    txtName.Text = myReader[1].ToString();
                    txtTitle.Text = myReader[2].ToString();
                    ddlType.SelectedItem.Text = myReader[3].ToString();
                    //radioGen.DataValueField = myReader[4].ToString();
                    radioGen.ClearSelection();
                    foreach (ListItem li in radioGen.Items)
                    {
                        if (li.Value == myReader[4].ToString())
                        {
                            li.Selected = true;
                            break;
                        }

                    }
                    Dob.Text = myReader[5].ToString();
                    //Dob.Text = myReader[5].ToDateString("MM/dd/yyyy");
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

        protected void btnSave_Click(object sender, EventArgs e)
        {
            
            long account_number = Convert.ToInt64(txtAcc.Text);
            string customer_name = txtName.Text;
            string account_titel = txtTitle.Text;
            string account_type = ddlType.SelectedItem.Text;
            string gender = radioGen.SelectedItem.Text;
            DateTime dob = DateTime.Parse(Dob.Text, CultureInfo.CreateSpecificCulture("fr-FR"));
            string nationality = Nation.Text;
            string postal_address = Padd.Text;
            long phone_number = Convert.ToInt64(Phno.Text);
            long nic_number = Convert.ToInt64(Nic.Text);
            string email = Eadd.Text;
            string occupation = Occup.Text;
            long initial_deposit = Convert.ToInt64(Initdep.Text);
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
            string query = "UPDATE customer set C_Name= '" + customer_name + "',A_title= '" + account_titel + "',A_type= '" + account_type + "',Gender= '" + gender + "',Dob= '" + dob + "',Nationality= '" + nationality + "',P_Add= '" + postal_address + "',Phone= '" + phone_number + "' ,Nic= '" + nic_number + "' ,Email= '" + email + "' ,Occup= '" + occupation + "' ,Init_dep= '" + initial_deposit + "' where A_Id= '" + account_number +"'";
            SqlCommand cm = new SqlCommand(query, con);
            con.Open();
            cm.ExecuteNonQuery();
            con.Close();
            clear();
        }
    }
}