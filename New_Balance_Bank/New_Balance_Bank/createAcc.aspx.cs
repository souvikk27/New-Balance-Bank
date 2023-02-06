using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Drawing;
using System.IO;
using System.Xml.Linq;
using System.Globalization;

namespace New_Balance_Bank
{
    public partial class createAcc : System.Web.UI.Page
      
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Execute(string query)
        {
            SqlCommand cmd = new SqlCommand(query,con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
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

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if(imgPrev.HasFile && imgSign.HasFile)
            {
                try
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
                    string profile_pic = Path.GetFileName(imgPrev.FileName);
                    string signature = Path.GetFileName(imgSign.FileName);
                    imgPrev.SaveAs(Server.MapPath("Images/") + profile_pic);
                    imgSign.SaveAs(Server.MapPath("Images/") + signature);
                    string query = "Insert Into customer(A_Id,C_Name,A_title,A_type,Gender,Dob,Nationality,P_Add,Phone,Nic,Email,Occup,Init_dep,P_pic,Sig) Values('" + account_number + "','" + customer_name + "','" + account_titel + "','" + account_type + "','" + gender + "','" + dob + "','" + nationality + "','" + postal_address + "','" + phone_number + "','" + nic_number + "','" + email + "','" + occupation + "','" + initial_deposit + "','" + imgPrev.FileName + "','" + imgSign.FileName + "')";
                    Execute(query);
                    clear();

                }

                catch(Exception ex)
                {
                    lblBtnUpdate.Text = "Operation Failed. Following error occured:" + ex.Message;
                }
                

            }
            else
            {
                lblBtnUpdate.Text = "Please select an Image File";
            }
            


        }
    }
}