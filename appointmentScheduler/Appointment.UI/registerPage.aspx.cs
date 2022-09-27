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
    public partial class registerPage : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Button(object sender, EventArgs e)
        {
            try
            {
                int EmpId = int.Parse(txtEmployeeId.Text);
                string Fname = txtFname.Text;
                string Lname = txtLname.Text;
                string Email = txtEmail.Text;
                string Designation = txtDesignation.Text;
                string Phone = txtPhone.Text;
                string Pwd = txtPwd.Text;
                string CPwd = txtCPwd.Text;
                UserRegistrationService userService = new UserRegistrationService();
                userService.Registration(EmpId, Fname, Lname, Designation, Email, Phone, Pwd, CPwd);
                LblMsg.Text = "Registered Successful";
                Response.Redirect("LoginPage.aspx");
                connection.Close();
            }
            catch (Exception)
            {
              
                 LblMsg.Text = "Error: " + " Username already exists";
            }
        }
    }
}
