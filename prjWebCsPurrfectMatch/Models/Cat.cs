using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prjWebCsPurrfectMatch.Models.Enums;

namespace prjWebCsPurrfectMatch.Models
{

    /// <summary>
    /// Represents a cat available in the shelter.
    /// </summary>
    public class Cat
    {
        public int CatId { get; set; }                                  // Primary key (identity)
        public string Name { get; set; }                                // Cat name
        public string PictureURL { get; set; }                          // Relative URL to the cat picture
        public int? AgeMonths { get; set; }                             // Approximate age in months
        public CatGender? Gender { get; set; }                          // Cat gender
        public CatFurColor? FurColor { get; set; }                      // Fur color category
        public CatFurLength? FurLength { get; set; }                    // Fur length category
        public CatEnergyLevel? EnergyLevel { get; set; }                //
        public bool? CompatibilityKids { get; set; }                    // Compatibility with children
        public bool? CompatibilityCats { get; set; }                    // Compatibility with other cats
        public bool? CompatibilityDogs { get; set; }                    // Compatibility with dogs
        public CatAvailabilityStatus AvailabilityStatus { get; set; }   // Current availability status
        public string Description { get; set; }                         // Cat description
        public DateTime JoinedShelter { get; set; }                     // Date the cat joined the shelter


        // UI formatted properties (not stored in database)
        public string FormattedAge { get; set; }                        // Age formatted for display
        public string FormattedAgeAndGender { get; set; }               // Gender and age combined for display
    }
}