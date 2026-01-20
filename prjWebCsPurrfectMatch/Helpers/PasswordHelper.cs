using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace prjWebCsPurrfectMatch.Helpers
{
    public static class PasswordHelper
    {

        public static string HashPassword(string password)
        {

            byte[] bytes = Encoding.UTF8.GetBytes(password);

            SHA256 sha = SHA256.Create();
            byte[] hash = sha.ComputeHash(bytes);

            StringBuilder sb = new StringBuilder();
            foreach (byte b in hash)
            {
                sb.Append(b.ToString("x2"));
            }

            return sb.ToString();
        }
    }
}