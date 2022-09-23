using Appointment.Entities;
using AppointmentDataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Appointment.BusinessLayer
{
    public class UserDetailsService
    {
        UserDetailsRepository repository;
        public UserDetailsService()
        {
            repository = new UserDetailsRepository();
        }
        public List<RegisterDetails> GetAllUsers()
        {
            try
            {
                return repository.GetAllUsers();
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
