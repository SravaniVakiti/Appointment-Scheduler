using Appointment.Entities;
using AppointmentDataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Appointment.BusinessLayer
{
    public class UsersService
    {
        UsersRepository repository;
        public UsersService()
        {
            repository = new UsersRepository();
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
