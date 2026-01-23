using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjWebCsPurrfectMatch.Helpers
{
    public class DisplayFormatterHelper
    {
        public static string FormatCatAge(int? ageMonths)
        {
            if (ageMonths == null)
            {
                return "Age unknown";
            }

            int months = ageMonths.Value;

            if (months < 12)
            {
                return $"{months} month{(months > 1 ? "s" : "")} old";
            }
            else
            {
                int years = months / 12;
                int leftoverMonths = months % 12;

                if (leftoverMonths == 0)
                {
                    return $"{years} year{(years > 1 ? "s" : "")} old";
                }
                else
                {
                    return $"{years} year{(years > 1 ? "s" : "")} {leftoverMonths} month{(leftoverMonths > 1 ? "s" : "")} old";
                }
            }
        }

        public static string FormatCatGenderAndAge(int? ageMonths, string gender)
        {
            string genderOutput = string.IsNullOrWhiteSpace(gender)
                ? "Gender unknown"
                : gender;

            string ageOutput;

            if (ageMonths == null)
            {
                ageOutput = "Age unknown";
            }
            else
            {
                int months = ageMonths.Value;

                if (months < 12)
                {
                    ageOutput = $"{months} month{(months > 1 ? "s" : "")} old";
                }
                else
                {
                    int years = months / 12;
                    int leftoverMonths = months % 12;

                    if (leftoverMonths == 0)
                    {
                        ageOutput = $"{years} year{(years > 1 ? "s" : "")} old";
                    }
                    else
                    {
                        ageOutput = $"{years} year{(years > 1 ? "s" : "")} {leftoverMonths} month{(leftoverMonths > 1 ? "s" : "")} old";
                    }
                }
            }

            return $"{genderOutput} • {ageOutput}";
        }
    }
}