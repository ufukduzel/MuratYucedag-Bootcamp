using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ResumeProject.Models;

namespace ResumeProject.Controllers
{
    public class StatisticController : Controller
    {
        DbResumeEntities db = new DbResumeEntities();

        // GET: Statistic
        public ActionResult Index()
        {
            //ViewBag.v = "Merhaba"; 
            // Controller dan View a veri taşımayı sağlayan komut ViewBag dir
            // ViewBag.v isimli değeri index in içinde çağırarak kullanabiliriz

            ViewBag.skillCount = db.TblSkill.Count();
            // skillCount burada bir değişken ismidir, opsiyoneldir.
            // Count() metodu o tabloda kaç tane veri olduğunu sayar
            ViewBag.technologyCount = db.TblTechnology.Count();
            //ViewBag.csharpValue = db.TblTechnology.Where(x => x.TechnologyITitle == "C#").Select(y => y.TechnologyIValue); // böyle bize sorguyu kısmen geri döndürür, sebebi value çekmek için ya tolist ya firstordefault kullanılması gerekliliğidir
            ViewBag.csharpValue = db.TblTechnology.Where(x => x.TechnologyITitle == "C#").Select(y => y.TechnologyIValue).FirstOrDefault();
            // FirstOrDefault() burada yakaladığı ilk tek değeri getiren metottur.
            ViewBag.contactCount = db.TblContact.Count();
            ViewBag.subjectTesekkur = db.TblContact.Where(x => x.Subject == 1).Count();
            ViewBag.sumTechnologyValue = db.TblTechnology.Sum(x => x.TechnologyIValue);
            ViewBag.averageTechnologyValue = db.TblTechnology.Average(x => x.TechnologyIValue);

            return View();

            // bootstrap card example w3schools
            // w3schools.com/bootstrap4/bootstrap_cards.asp
            // w3schools.com/bootstrap4/tryit.asp?filename=trybs_card_contextual&stacked=h
        }
    }
}