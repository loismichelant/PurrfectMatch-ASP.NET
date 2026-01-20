using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace prjWebCsPurrfectMatch.Helpers
{
    public static class InputValidator
    {

        public static bool IsNotEmpty(string input)
        {
            return !string.IsNullOrWhiteSpace(input);
        }

        public static bool AreNotEmpty(params string[] inputs)
        {
            if (inputs == null || inputs.Length == 0) return false;

            foreach (var input in inputs)
            {
                if (string.IsNullOrWhiteSpace(input))
                    return false;
            }

            return true;
        }

        public static bool IsValidName(string name)
        {
            if (string.IsNullOrWhiteSpace(name)) return false;

            string pattern = @"^[A-Za-zÀ-ÖØ-öø-ÿ'\-\s]+$";
            return Regex.IsMatch(name.Trim(), pattern);
        }

        public static bool IsValidEmail(string email)
        {
            if (string.IsNullOrWhiteSpace(email)) return false;

            string pattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
            return Regex.IsMatch(email.Trim(), pattern, RegexOptions.IgnoreCase);
        }

        public static bool PasswordsMatch(string password, string confirmPassword)
        {
            if (string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword))
                return false;

            return password == confirmPassword;
        }

        public static bool IsValidBirthDate(DateTime date)
        {
            DateTime today = DateTime.Today;
            int age = today.Year - date.Year;
            if (date > today.AddYears(-age)) age--;

            return age >= 18 && age < 120;
        }

    }
}