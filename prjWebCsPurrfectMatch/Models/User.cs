using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prjWebCsPurrfectMatch.Models.Enums;

namespace prjWebCsPurrfectMatch.Models
{

    /// <summary>
    /// Represents a user.
    /// </summary>
    public class User
    {
        public int UserId { get; set; }                 // Primary key (identity)
        public string FirstName { get; set; }           // User first name
        public string LastName { get; set; }            // User last name
        public string Email { get; set; }               // User email address
        public string PasswordHash { get; set; }        // Hashed password
        public DateTime BirthDate { get; set; }         // User birth date
        public DateTime AccountCreated { get; set; }    // Account creation date
        public UserRole UserRole { get; set; }          // User role (Adopter, Foster, Volunteer, Admin)


        // UI formatted properties (not stored in database)
        public string FormattedName { get; set; }       // Name formatted for display
    }
}