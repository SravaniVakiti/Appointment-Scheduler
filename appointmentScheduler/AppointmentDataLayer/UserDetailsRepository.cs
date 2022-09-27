using Appointment.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppointmentDataLayer
{
    public class UserDetailsRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectConnection"].ConnectionString);
        SqlCommand command = null;
        public List<RegisterDetails> GetAllUsers()
        {
            try
            {
                List<RegisterDetails> registerDetails = new List<RegisterDetails>();
                command = new SqlCommand($"Select EmployeeId,Fname,Email,Designation,PhoneNumber from RegisterDetails", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    RegisterDetails registerDetail = new RegisterDetails();
                    registerDetail.EmployeeId = (int)dr["employeeId"];
                    registerDetail.Fname = dr["fname"].ToString();
                    registerDetail.Email = dr["email"].ToString();
                    registerDetail.Designation = dr["designation"].ToString();
                    registerDetail.PhoneNumber = dr["phoneNumber"].ToString();
                    registerDetails.Add(registerDetail);
                }
                return registerDetails;
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
    }
}
