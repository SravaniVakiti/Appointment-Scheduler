using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Appointment.Entities
{
    public class RegisterDetails
    {
        public int EmployeeId { get; set; } 
        public string Fname { get; set; }
        public string Lname { get; set; }
        public string Designation { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string Pwd { get; set; }
        public string CPwd { get; set; }

    }
}
