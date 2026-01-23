using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using prjWebCsPurrfectMatch.Models;
using prjWebCsPurrfectMatch.Models.Enums;

namespace prjWebCsPurrfectMatch.Data
{
    public class CatRepository
    {

        public List<Cat> GetAll()
        {
            List<Cat> cats = new List<Cat>();

            SqlConnection conn = DBConnection.GetConnection();
            conn.Open();

            string sql = "SELECT * FROM Cats ORDER BY JoinedShelter DESC";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                cats.Add(ReadCat(dr));
            }

            dr.Close();
            conn.Close();
            return cats;
        }

        public List<Cat> GetAvailableCats()
        {
            List<Cat> cats = new List<Cat>();

            SqlConnection conn = DBConnection.GetConnection();
            conn.Open();

            string sql = "SELECT * FROM Cats WHERE AvailabilityStatus = @status ORDER BY JoinedShelter DESC";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@status", (int)CatAvailabilityStatus.ReadyForAdoption);
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                cats.Add(ReadCat(dr));
            }

            dr.Close();
            conn.Close();
            return cats;
        }

        public List<Cat> Search(CatGender? gender, CatFurColor? color, CatFurLength? length, CatEnergyLevel? energy, bool? compKids, bool? compCats, bool? compDogs)
        {
            List<Cat> cats = new List<Cat>();

            SqlConnection conn = DBConnection.GetConnection();
            conn.Open();

            string sql = "SELECT * FROM Cats WHERE AvailabilityStatus = @status ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@status", (int)CatAvailabilityStatus.ReadyForAdoption);

            // Gender
            if (gender != null)
            {
                sql += " AND Gender = @gender";
                cmd.Parameters.AddWithValue("@gender", (int)gender);
            }

            // Fur Color
            if (color != null)
            {
                sql += " AND FurColor = @color";
                cmd.Parameters.AddWithValue("@color", (int)color);
            }

            // Fur Length
            if (length != null)
            {
                sql += " AND FurLength = @length";
                cmd.Parameters.AddWithValue("@length", (int)length);
            }

            // Energy Level
            if (energy != null)
            {
                sql += " AND EnergyLevel = @energy";
                cmd.Parameters.AddWithValue("@energy", (int)energy);
            }

            // Compatibility Kids
            if (compKids != null)
            {
                sql += " AND CompatibilityKids = @kids";
                cmd.Parameters.AddWithValue("@kids", compKids);
            }

            // Compatibility Cats
            if (compCats != null)
            {
                sql += " AND CompatibilityCats = @cats";
                cmd.Parameters.AddWithValue("@cats", compCats);
            }

            // Compatibility Dogs
            if (compDogs != null)
            {
                sql += " AND CompatibilityDogs = @dogs";
                cmd.Parameters.AddWithValue("@dogs", compDogs);
            }

            cmd.CommandText = sql;

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                cats.Add(ReadCat(dr));
            }

            dr.Close();
            conn.Close();

            return cats;
        }

        public Cat GetById(int catId)
        {
            SqlConnection conn = DBConnection.GetConnection();
            conn.Open();

            string sql = "SELECT * FROM Cats WHERE CatId = @id";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@id", catId);

            SqlDataReader dr = cmd.ExecuteReader();
            Cat cat = dr.Read() ? ReadCat(dr) : null;

            dr.Close();
            conn.Close();
            return cat;
        }

        private Cat ReadCat(SqlDataReader dr)
        {
            return new Cat
            {
                CatId = Convert.ToInt32(dr["CatId"]),
                AvailabilityStatus = (CatAvailabilityStatus)Enum.Parse(typeof(CatAvailabilityStatus), dr["AvailabilityStatus"].ToString()),
                PictureURL = dr["PictureURL"].ToString(),
                Name = dr["Name"].ToString(),
                AgeMonths = dr["AgeMonths"] != DBNull.Value ? (int?)Convert.ToInt32(dr["AgeMonths"]) : null,
                Gender = dr["Gender"] != DBNull.Value ? (CatGender?)Enum.Parse(typeof(CatGender), dr["Gender"].ToString()) : null,
                FurColor = dr["FurColor"] != DBNull.Value ? (CatFurColor)Enum.Parse(typeof(CatFurColor), dr["FurColor"].ToString()) : CatFurColor.Other,
                FurLength = dr["FurLength"] != DBNull.Value ? (CatFurLength?)Enum.Parse(typeof(CatFurLength), dr["FurLength"].ToString()) : null,
                CompatibilityKids = dr["CompatibilityKids"] != DBNull.Value ? (bool?)Convert.ToBoolean(dr["CompatibilityKids"]) : null,
                CompatibilityCats = dr["CompatibilityCats"] != DBNull.Value ? (bool?)Convert.ToBoolean(dr["CompatibilityCats"]) : null,
                CompatibilityDogs = dr["CompatibilityDogs"] != DBNull.Value ? (bool?)Convert.ToBoolean(dr["CompatibilityDogs"]) : null,
                EnergyLevel = dr["EnergyLevel"] != DBNull.Value ? (CatEnergyLevel?)Enum.Parse(typeof(CatEnergyLevel), dr["EnergyLevel"].ToString()) : null,
                Description = dr["Description"].ToString(),
                JoinedShelter = Convert.ToDateTime(dr["JoinedShelter"])
            };
        }
    }
}