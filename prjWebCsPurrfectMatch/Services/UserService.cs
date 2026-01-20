using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prjWebCsPurrfectMatch.Data;
using prjWebCsPurrfectMatch.Helpers;
using prjWebCsPurrfectMatch.Models;

namespace prjWebCsPurrfectMatch.Services
{
    public class UserService
    {
        private UserRepository repo = new UserRepository();

        public string Register(User user)
        {
            if (repo.EmailExists(user.Email))
            {
                return "This email is already registered. Please use another email.";
            }

            int rows = repo.Insert(user);

            if (rows > 0)
            {
                return "Success"; 
            }
            else
            {
                return "An error occurred while creating your account. Please try again.";
            }
        }

        public User Login(string email, string password)
        {
            return repo.FindByEmailAndPassword(email, password);
        }

    }
}