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
    public partial class SearchAppointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Search(object sender, EventArgs e)
        {
            int employeeId = int.Parse(txtId.Text);
            AppointmentService appointmentService = new AppointmentService();
            appointmentService.GetAppointmentByEmpId(employeeId);


        }
    }
}