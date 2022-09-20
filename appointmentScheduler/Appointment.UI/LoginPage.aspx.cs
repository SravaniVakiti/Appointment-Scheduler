using Appointment.BusinessLayer;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Appointment.UI
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
                try
                {
                    string Email = txtEmail.Text;
                    UserRegistrationService userService = new UserRegistrationService();
                    int res = userService.Login(Email);

                    if (res == 1)
                    {
                        connection.Open();
                        string checkPwd = "select Pwd from RegisterDetails where Email='" + txtEmail.Text + "'";
                        SqlCommand PwdCmd = new SqlCommand(checkPwd, connection);
                        string Pwd = PwdCmd.ExecuteScalar().ToString().Replace(" ", "");
                        if (Pwd == txtPwd.Text)
                        {
                            Session["UserName"] = txtEmail.Text;
                            lb1Msg.Text = "Password is correct";
                            Response.Redirect("MenuPage.aspx");
                        }
                        else
                        {
                            lb1Msg.Text = "Password is  not correct";
                        }
                    }
                    else
                    {
                        lb1Msg.Text = "Invalid Employee Id or password";
                    }
                }
                catch (Exception)
                {
                    lb1Msg.Text = "Invalid Employee Id or Password";
                }
        }
    }
}