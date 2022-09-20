using Appointment.Entities;
using AppointmentDataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Appointment.BusinessLayer
{
    public class AppointmentService
    {
        AppointmentRepository repository;
        public AppointmentService()
        {
            repository = new AppointmentRepository();
        }
        public void AddAppointment(Appointments appointment)
        {
            try
            {
                repository.AddAppointment(appointment);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void DeleteAppointment(int EmployeeId)
        {
            try
            {
                repository.DeleteAppointment(EmployeeId);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void EditAppointment(Appointments appointment)
        {
            try
            {
                repository.EditAppointment(appointment);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Appointments> GetAllAppointments()
        {
            try
            {
                return repository.GetAllAppointments();
            }
            catch (Exception)
            {

                throw;
            }
        }
        public Appointments GetAppointmentByEmpId(int EmployeeId)
        {
            try
            {
                return repository.GetAppointmentByEmpId(EmployeeId);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public Appointments GetAppointmentByDate(string Date)
        {
            try
            {
                return repository.GetAppointmentByDate(Date);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public List<Appointments> GetUpcomingAppointments()
        {
            try
            {
                return repository.GetUpcomingAppointments();
            }
            catch (Exception)
            {

                throw;
            }
        }

    }
}
