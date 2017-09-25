using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace AppWeb
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUpBtn_Click(object sender, EventArgs e)
        {
            if (inputUsername.Text != "" && inputPassword.Text != "" && inputName.Text != "" && inputLastName.Text != "" && inputEmail.Text != "")
            {
                if (inputPassword.Text == inputPassword2.Text)
                {
                    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        using (SqlCommand cmd = new SqlCommand("uspAddUser", con))
                        {
                            cmd.CommandType = System.Data.CommandType.StoredProcedure;
                            cmd.Parameters.Add("@pUsername", SqlDbType.NVarChar).Value = inputUsername.Text;
                            cmd.Parameters.Add("@pPassword", SqlDbType.NVarChar).Value = inputPassword.Text;
                            cmd.Parameters.Add("@pFirstName", SqlDbType.NVarChar).Value = inputName.Text;
                            cmd.Parameters.Add("@pLastName", SqlDbType.NVarChar).Value = inputLastName.Text;
                            cmd.Parameters.Add("@pEmail", SqlDbType.NVarChar).Value = inputEmail.Text;
                            cmd.Parameters.Add("@responseMessage", SqlDbType.NVarChar,250).Value = "";
                            cmd.Parameters["@responseMessage"].Direction = ParameterDirection.Output;
                            con.Open();
                            cmd.ExecuteNonQuery();
                            textValidation.InnerText = cmd.Parameters["@responseMessage"].Value.ToString();
                        }
                    }
                }
                else {
                    textValidation.InnerText = "Password does not match";
                }
            }
            else {
                textValidation.InnerText = "All fields are required";
            }
        }
    }
}