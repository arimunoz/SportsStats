using System;
using System.Collections.Generic;
using StatSports.Models;

namespace StatSports.Data
{
    public interface CrudOps
    {



        // ####################  MLB ###########################

        
        //###### Teams #######
        List <Team> GetList();
        Team GetTeam(int id);


        //###### Players ########

    }
}
