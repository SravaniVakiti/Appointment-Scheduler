using Appointment.BusinessLayer;
using Appointment.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Appointment.UI
{
    public partial class AddAppointments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_AddAppointment(object sender, EventArgs e)
        {
            try
            {
                Appointments Appointment = new Appointments();
                Appointment.EmployeeId = int.Parse(txtEmployeeId.Text);
                Appointment.Designation = txtDesignation.Text;
                Appointment.Description = txtDescription.Text;
                Appointment.Date = txtDate.Text;
                Appointment.Time = txtTime.Text;
                Appointment.Duration = txtDuration.Text;
                AppointmentService appointmentService = new AppointmentService();
                appointmentService.AddAppointment(Appointment);
                LblMsg.Text = "Record Added successfully";
                Response.Redirect("MenuPage.aspx");
            }
            catch (Exception)
            {
                LblMsg.Text = "Error occured while Adding Appointment";
            }
        }
    }
}