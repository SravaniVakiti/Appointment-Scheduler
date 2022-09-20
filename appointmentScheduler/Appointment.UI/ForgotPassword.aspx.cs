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
    public partial class ForgotPassword : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectConnection"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            try
            {
                string Email =txtEmail.Text;
                string Pwd = txtPwd.Text;
                string CPwd = txtCPwd.Text;
                UserRegistrationService userService = new UserRegistrationService();
                userService.ForgotPwd(Pwd, CPwd, Email);
                lb1Msg.Text = "Password Updated";
                Response.Redirect("LoginPage.aspx");

            }
            catch (Exception)
            {
                lb1Msg.Text = "Password not updated retry";

            }
        }
    }
}