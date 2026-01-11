using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjWebCsPurrfectMatch.Models.Enums
{

    /// <summary>
    /// Represents the current availability status of a cat.
    /// </summary>
    public enum CatAvailabilityStatus
    {
        AtShelter = 1,              // Cat is currently at the shelter
        InFosterCare = 2,           // Cat is living in a foster home
        ReadyForAdoption = 3,       // Cat is ready to be adopted
        Adopted = 4                 // Cat has been adopted
    }
}