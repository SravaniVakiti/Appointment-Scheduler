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
    public partial class EditAppointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_EditAppointment(object sender, EventArgs e)
        {
            try
            {
                Appointments Appointment = new Appointments();
                Appointment.EmployeeId = int.Parse(txtEmployeeId.Text);
                Appointment.Date = txtDate.Text;
                Appointment.Time = txtTime.Text;
                //Appointment.Date = DateTime.Parse(txtDate.Text);
                //Appointment.Time = DateTime.Parse(txtTime.Text);
                Appointment.Duration = txtDuration.Text;
                AppointmentService appointmentService = new AppointmentService();
                appointmentService.EditAppointment(Appointment);
                LblMsg.Text = "Record Added successfully";
                Response.Redirect("MenuPage.aspx");
            }
            catch (Exception ex)
            {
                LblMsg.Text="error: "+ex;
            }
        }
    }
}