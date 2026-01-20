using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using prjWebCsPurrfectMatch.Models;
using prjWebCsPurrfectMatch.Models.Enums;

namespace prjWebCsPurrfectMatch.Data
{
    public class UserRepository
    {

        public bool EmailExists(string email)
        {
            SqlConnection conn = DBConnection.GetConnection();
            conn.Open();

            string sql = "SELECT Email FROM Users WHERE Email = @email";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@email", email);

            SqlDataReader dr = cmd.ExecuteReader();
            bool exists = dr.Read();

            dr.Close();
            conn.Close();

            return exists;
        }

        public int Insert(User user)
        {
            SqlConnection conn = DBConnection.GetConnection();
            conn.Open();

            string sql = "INSERT INTO Users (FirstName, LastName, Email, PasswordHash, BirthDate, AccountCreated, UserRole) ";
            sql += "VALUES (@firstName, @lastName, @email, @password, @birthDate, @accountCreated, @userRole);";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@firstName", user.FirstName);
            cmd.Parameters.AddWithValue("@lastName", user.LastName);
            cmd.Parameters.AddWithValue("@email", user.Email);
            cmd.Parameters.AddWithValue("@password", user.PasswordHash);
            cmd.Parameters.AddWithValue("@birthDate", user.BirthDate);
            cmd.Parameters.AddWithValue("@accountCreated", user.AccountCreated);
            cmd.Parameters.AddWithValue("@userRole", user.UserRole.ToString());

            int rows = cmd.ExecuteNonQuery();

            conn.Close();

            return rows;
        }

        public User FindByEmailAndPassword(string email, string passwordHash)
        {
            SqlConnection conn = DBConnection.GetConnection();
            conn.Open();

            string sql = "SELECT * FROM Users WHERE Email = @email AND PasswordHash = @password";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@password", passwordHash);

            SqlDataReader dr = cmd.ExecuteReader();

            User user = dr.Read() ? ReadUser(dr) : null;

            dr.Close();
            conn.Close();

            return user;
        }

        private User ReadUser(SqlDataReader dr)
        {
            return new User
            {
                UserId = Convert.ToInt32(dr["UserId"]),
                FirstName = dr["FirstName"].ToString().Trim(),
                LastName = dr["LastName"].ToString().Trim(),
                Email = dr["Email"].ToString().Trim(),
                BirthDate = Convert.ToDateTime(dr["BirthDate"]),
                AccountCreated = Convert.ToDateTime(dr["AccountCreated"]),
                UserRole = (UserRole)Enum.Parse(typeof(UserRole), dr["UserRole"].ToString())
            };
        }
    }
}