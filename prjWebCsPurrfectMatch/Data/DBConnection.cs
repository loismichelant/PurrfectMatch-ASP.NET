using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace prjWebCsPurrfectMatch.Data
{

    /// <summary>
    /// Static helper class that provides access to the database connection
    /// </summary>
    public static class DBConnection
    {

        /// <summary>
        /// Returns a new SQL connection to the ShelterDB database
        /// </summary>
        public static SqlConnection GetConnection()
        {
            string ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\loism\\source\\repos\\prjWebCsPurrfectMatch\\prjWebCsPurrfectMatch\\App_Data\\ShelterDB.mdf;Integrated Security=True";
            return new SqlConnection(ConnectionString);
        }
    }
}