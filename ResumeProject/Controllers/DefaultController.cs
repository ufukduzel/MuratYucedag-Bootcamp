using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ResumeProject.Models;

namespace ResumeProject.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Default

        // Select LEN('Sed ut perspiciatis unde omnis iste natus error sit accusa ntium dolor emque laudan.')
        // Len() metodu SQL de girilen metinsel ifadenin kaç karakter olduğu bilgisini verir
        // trim boşlukları kaldırmak anlamına gelir
        // fas, font awesome dan geliyor

        DbResumeEntities db = new DbResumeEntities();

        public PartialViewResult PartialScripts()
        {
            return PartialView();
        }

        public PartialViewResult PartialFooter()
        {
            return PartialView();
        }

        public PartialViewResult PartialBrands()
        {
            return PartialView();
        }

        public PartialViewResult PartialProjects()
        {
            return PartialView();
        }

        public PartialViewResult PartialCounter()
        {
            ViewBag.skillCount = db.TblSkill.Count();
            ViewBag.serviceCount = db.TblService.Count();
            ViewBag.avgTechnologyValue = db.TblTechnology.Average(x => x.TechnologyIValue);
            ViewBag.happyCustomer = 38;
            // ViewBag var object türü olduğu için bütün değişken türlerini üzerine alabilir
            return PartialView();
        }

        public PartialViewResult PartialSkill()
        {
            var values = db.TblSkill.ToList();
            return PartialView(values);
        }

        public PartialViewResult PartialTechnology()
        {
            var values = db.TblTechnology.ToList();
            return PartialView(values);
        }

        public PartialViewResult PartialService()
        {
            var values = db.TblService.ToList();
            return PartialView(values);
        }

        public PartialViewResult PartialAbout()
        {
            var values = db.TblProfile.ToList();
            return PartialView(values);
        }

        public ActionResult Index()
        {
            return View();
        }

        public PartialViewResult Partial1()
        {
            return PartialView();
        }

        public PartialViewResult PartialHeader()
        {
            return PartialView();
        }

        public PartialViewResult PartialNavbar()
        {
            return PartialView();
        }

        public PartialViewResult PartialFeature()
        {
            return PartialView();
        }


    }
}