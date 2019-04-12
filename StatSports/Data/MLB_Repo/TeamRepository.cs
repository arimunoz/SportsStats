using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using StatSports.Models;
using Dapper;

namespace StatSports.Data.MLB_Repo
{
    public class TeamRepository : CrudOps
    {
        IConfiguration _configuration;

        public TeamRepository (IConfiguration configuration)
        {
            _configuration = configuration;
        }


        List<Team> CrudOps.GetList()
        {
            var connectionString = this.GetConnection();
            List<Team> teams = new List<Team>();

            using (var con = new MySqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    var query = "SELECT * FROM mlb_teams";
                    teams = con.Query<Team>(query).ToList();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }

                return teams;
            }
        }

        public Team GetTeam(int id)
        {
            var connectionString = this.GetConnection();
            Team team = new Team();

            using (var con = new MySqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    var query = "SELECT * FROM mlb_teams WHERE ID =" + id;
                    team = con.Query<Team>(query).FirstOrDefault();

                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }

                return team;
            }
        }


        public string GetConnection()
        {
            var _MYSQLCONNECTION_ = _configuration.GetSection("ConnectionStrings").GetSection("ContextString").Value;
            return _MYSQLCONNECTION_;
        }
    }
}
