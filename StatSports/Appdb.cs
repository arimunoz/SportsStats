using System;
using MySql.Data.MySqlClient;

namespace StatSports
{
    public class Appdb
    {
        public MySqlConnection Connection;

        public Appdb(string connectionString)
        {
            Connection = new MySqlConnection(connectionString);
        }

        public void Dispose()
        {
            Connection.Close();
        }
    }
}