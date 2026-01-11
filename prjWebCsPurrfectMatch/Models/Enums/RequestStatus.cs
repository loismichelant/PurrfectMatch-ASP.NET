using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjWebCsPurrfectMatch.Models.Enums
{

    /// <summary>
    /// Represents the current status of a user request.
    /// </summary>
    public enum RequestStatus
    {
        Pending = 1,            // Request has been submitted and is waiting for review
        Approved = 2,           // Request has been approved by an administrator
        Rejected = 3            // Request has been rejected by an administrator
    }
}