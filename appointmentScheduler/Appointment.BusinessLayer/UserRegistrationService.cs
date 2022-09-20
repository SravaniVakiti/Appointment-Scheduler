using AppointmentDataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Appointment.BusinessLayer
{
    public class UserRegistrationService
    {
        UserRegistrationRepository repository;
        public UserRegistrationService()
        {
            repository = new UserRegistrationRepository();
        }

        public void Registration(int EmpId, string Fname, string Lname, string Designation, string Email, string Phone, string Pwd, string CPwd)
        {
            try
            {
                repository.Registration(EmpId, Fname, Lname, Designation, Email, Phone, Pwd, CPwd);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public int Login(string Email)
        {
            try
            {

                return repository.Login(Email);

            }
            catch (Exception)
            {
                throw;
            }
        }
        public void ForgotPwd(string Pwd, string CPwd, string Email)
        {
            try
            {
                repository.ForgotPwd(Pwd, CPwd, Email);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
