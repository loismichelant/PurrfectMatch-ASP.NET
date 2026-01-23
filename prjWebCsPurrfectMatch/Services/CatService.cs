using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prjWebCsPurrfectMatch.Data;
using prjWebCsPurrfectMatch.Helpers;
using prjWebCsPurrfectMatch.Models;
using prjWebCsPurrfectMatch.Models.Enums;

namespace prjWebCsPurrfectMatch.Services
{
    public class CatService
    {
        private CatRepository repo = new CatRepository();

        public List<Cat> GetAllCats()
        {
            var cats = repo.GetAll();

            foreach (var cat in cats)
            {
                cat.FormattedAge = DisplayFormatterHelper.FormatCatAge(cat.AgeMonths);
            }

            return cats;
        }

        // Retourne seulement les chats disponibles pour adoption
        public List<Cat> GetCatsReadyForAdoption()
        {
            var cats = repo.GetAvailableCats();

            foreach (var cat in cats)
            {
                cat.FormattedAge = DisplayFormatterHelper.FormatCatAge(cat.AgeMonths);
            }

            return cats;
        }

        public List<Cat> SearchCats(string gender, string ageGroup, string furLength, string furColor, string energy, bool? compKids, bool? compCats, bool? compDogs)
        {
            CatGender? genderEnum = 
                string.IsNullOrEmpty(gender)
                ? (CatGender?)null
                : (CatGender)Enum.Parse(typeof(CatGender), gender);

            CatFurLength? lenEnum = string.IsNullOrEmpty(furLength)
                ? (CatFurLength?)null
                : (CatFurLength)Convert.ToInt32(furLength);

            CatFurColor? colEnum = string.IsNullOrEmpty(furColor)
                ? (CatFurColor?)null
                : (CatFurColor)Convert.ToInt32(furColor);

            CatEnergyLevel? energyEnum = string.IsNullOrEmpty(energy)
                ? (CatEnergyLevel?)null
                : (CatEnergyLevel)Convert.ToInt32(energy);

            int? ageMin = null;
            int? ageMax = null;

            if (ageGroup == "Young")
            {
                ageMax = 24;
            }
            else if (ageGroup == "Adult")
            {
                ageMin = 24;
                ageMax = 84;
            }
            else if (ageGroup == "Senior")
            {
                ageMin = 84;
            }

            var cats = repo.Search(
                gender: genderEnum,
                color: colEnum,
                length: lenEnum,
                energy: energyEnum,
                compKids: compKids,
                compCats: compCats,
                compDogs: compDogs
            );

            if (ageMin != null || ageMax != null)
            {
                cats = cats
                    .Where(c =>
                        c.AgeMonths != null &&
                        (ageMin == null || c.AgeMonths >= ageMin) &&
                        (ageMax == null || c.AgeMonths < ageMax)
                    )
                    .ToList();
            }

            foreach (var cat in cats)
            {
                cat.FormattedAge = DisplayFormatterHelper.FormatCatAge(cat.AgeMonths);
            }

            return cats;
        }

        public Cat GetCat(int id)
        {
            var cat = repo.GetById(id);

            if (cat != null)
                cat.FormattedAgeAndGender = DisplayFormatterHelper.FormatCatGenderAndAge(cat.AgeMonths, cat.Gender?.ToString());

            return cat;
        }
    }
}