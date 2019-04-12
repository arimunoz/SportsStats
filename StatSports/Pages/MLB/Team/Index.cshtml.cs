using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using StatSports.Data;

namespace StatSports.Pages.MLB.Team
{
    public class IndexModel : PageModel
    {
        CrudOps _teamRepository;
        public IndexModel(CrudOps teamRepository)
        {
            _teamRepository = teamRepository;
        }

        [BindProperty]
        public List<Models.Team> teamList { get; set; }

        [BindProperty]
        public Models.Team team { get; set; }

        [TempData]
        public string Message { get; set; }
        public void OnGet()
        {
            teamList = _teamRepository.GetList();
        }
    }
}
