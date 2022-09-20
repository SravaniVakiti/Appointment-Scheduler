using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Appointment.Entities
{
    public class Appointments
    {
        public int EmployeeId { get; set; }
        public string Designation { get; set; }
        public string Description { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
        public string Duration { get; set; }


    }
}
