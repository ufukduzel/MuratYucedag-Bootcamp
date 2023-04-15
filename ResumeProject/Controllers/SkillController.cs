using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ResumeProject.Models;

namespace ResumeProject.Controllers
{
    public class SkillController : Controller
    {
        // GET: Skill

        DbResumeEntities db = new DbResumeEntities();

        public ActionResult Index()
        {
            var values = db.TblSkill.ToList();
            return View(values);
        }

        // Index sayfasında yer alan (küçük) model ve (büyük) Model arasındaki fark araştırılacak.
    }
}