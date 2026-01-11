using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjWebCsPurrfectMatch.Models.Enums
{

    /// <summary>
    /// Defines the different roles a user can have in the application.
    /// </summary>
    public enum UserRole
    {
        Adopter = 1,        // Regular user who can browse cats and submit adoption requests
        Admin = 2           // Application administrator.
    }
}