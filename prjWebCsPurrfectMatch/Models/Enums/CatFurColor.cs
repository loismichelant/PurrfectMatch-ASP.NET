using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjWebCsPurrfectMatch.Models.Enums
{

    /// <summary>
    /// Represents the main fur color or pattern of a cat.
    /// </summary>
    public enum CatFurColor
    {
        Grey = 1,               // Grey fur
        White = 2,              // White fur
        Black = 3,              // Black fur
        Orange = 4,             // Orange fur
        Tuxedo = 5,             // Black and white fur
        Tabby = 6,              // Tabby pattern
        TortoiseShell = 7,      // Tortoiseshell pattern
        Calico = 8,             // Tricolor pattern
        Other = 9               // Other or mixed fur pattern
    }
}