using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppointmentDataLayer
{
    public class UserRegistrationRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectConnection"].ConnectionString);
        SqlCommand command = null;
        public void Registration(int empId, string fname, string lname, string designation, string email, string phone, string pwd, string cpwd)
        {
            try
            {
                string ins = $"insert into [RegisterDetails](EmployeeId,Fname,Lname,Designation,Email,PhoneNumber,Pwd,CPwd) values ('{empId}','{fname}','{lname}','{designation}','{email}','{phone}','{pwd}','{cpwd}')";
                SqlCommand com = new SqlCommand(ins, connection);
                connection.Open();
                com.ExecuteNonQuery();
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
        public int Login(string email)
        {
            try
            {
                connection.Open();
                string qry = $"select count(*) from [RegisterDetails] where Email='{email}'";
                SqlCommand com = new SqlCommand(qry, connection);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                return temp;
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
        public void ForgotPwd(string pwd, string cpwd, string email)
        {
            try
            {
                string qry = $"update RegisterDetails set Pwd='{pwd}',CPwd='{cpwd}' where Email='{email}'";
                SqlCommand cmd = new SqlCommand(qry, connection);
                connection.Open();
                cmd.ExecuteNonQuery();
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
