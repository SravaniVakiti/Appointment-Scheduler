using Appointment.BusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Appointment.UI
{
    public partial class GetAppointmentByDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Search(object sender, EventArgs e)
        {
            try
            {


                string date = txtDate.Text;
                AppointmentService appointmentService = new AppointmentService();
                appointmentService.GetAppointmentByDate(date);
            }
            catch (Exception ex)
            {
                LblMsg.Text = ex.Message;
            }
        }
    }
}