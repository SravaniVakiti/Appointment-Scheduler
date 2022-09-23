using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using Appointment.Entities;

namespace AppointmentDataLayer
{
    public class AppointmentRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectConnection"].ConnectionString);
        SqlCommand command = null;
        SqlDataReader reader = null;
        DataSet dataSet = null;
        public void AddAppointment(Appointments appointment)
        {
            try
            {
                command = new SqlCommand($"insert into Appointments values('{appointment.EmployeeId}','{appointment.Designation}','{appointment.Description}','{appointment.Date}','{appointment.Time}','{appointment.Duration}')", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }

        }
        public void EditAppointment(Appointments appointment)
        {
            try
            {
                command = new SqlCommand($"update Appointments set Date='{appointment.Date}',Time='{appointment.Time}',Duration='{appointment.Duration}' where EmployeeId='{appointment.EmployeeId}'", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }

        }
        public void DeleteAppointment(int employeeId)
        {
            try
            {
                command = new SqlCommand($"Delete from Appointments where EmployeeId='{employeeId}'", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                connection.Close();
            }
        }
        public List<Appointments> GetAllAppointments()
        {
            try
            {
                List<Appointments> appointments = new List<Appointments>();
                command = new SqlCommand($"Select * from Appointments", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    Appointments appointment = new Appointments();
                    appointment.EmployeeId = (int)dr["employeeId"];
                    appointment.Designation = dr["designation"].ToString();
                    appointment.Description = dr["description"].ToString();
                    appointment.Date = dr["date"].ToString();
                    appointment.Time = dr["time"].ToString();
                    //appointment.Date = (DateTime)dr["date"];
                    //appointment.Time = (DateTime)dr["time"];
                    appointment.Duration = dr["duration"].ToString();
                    appointments.Add(appointment);
                }
                return appointments;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                connection.Close();
            }
        }
        public Appointments GetAppointmentByEmpId(int employeeId)
        {
            try
            {
                Appointments appointment = null;
                command = new SqlCommand($"Select * from appointments where EmployeeId={employeeId}", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    appointment = new Appointments();
                    appointment.EmployeeId = (int)dr["employeeId"];
                    appointment.Designation = dr["designation"].ToString();
                    appointment.Description = dr["description"].ToString();
                    appointment.Date = dr["date"].ToString();
                    appointment.Time = dr["time"].ToString();
                    //appointment.Date = (DateTime)dr["date"];
                    //appointment.Time = (DateTime)dr["time"];
                    appointment.Duration = dr["duration"].ToString();
                }
                return appointment;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }
        }
        public List<Appointments> GetUpcomingAppointments()
        {
            try
            {
                List<Appointments> appointments = new List<Appointments>();
                command = new SqlCommand($"select * from Appointments where Date>CONVERT(char(10), GetDate(),23) or Date=CONVERT(char(10), GetDate(),23) and Time>convert (varchar(50), cast(getdate() as Time),0)", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    Appointments appointment = new Appointments();
                    appointment.EmployeeId = (int)dr["employeeId"];
                    appointment.Designation = dr["designation"].ToString();
                    appointment.Description = dr["description"].ToString();
                    appointment.Date = dr["date"].ToString();
                    appointment.Time = dr["time"].ToString();
                    appointment.Duration = dr["duration"].ToString();
                    appointments.Add(appointment);
                }
                return appointments;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            { 
                connection.Close(); 
            }
        }
        public Appointments GetAppointmentByDate(string date)
        {
            try
            {
                Appointments appointment = null;
                command = new SqlCommand($"Select * from appointments where Date='{date}'", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    appointment = new Appointments();
                    appointment.EmployeeId = (int)dr["employeeId"];
                    appointment.Designation = dr["designation"].ToString();
                    appointment.Description = dr["description"].ToString();
                    appointment.Date = dr["date"].ToString();
                    appointment.Time = dr["time"].ToString();
                    appointment.Duration = dr["duration"].ToString();
                }
                return appointment;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }
        }

    }
}
