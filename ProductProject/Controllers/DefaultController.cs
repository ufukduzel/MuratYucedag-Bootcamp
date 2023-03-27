using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProductProject.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Default
        public ActionResult Index()
        {
            return View();
        }

        //public string deneme()
        //{
        //    return "şsdfşla";
        //}

        public ActionResult Index2()
        {
            return View(); // View dediğimiz şey bir sayfa. Yani geriye bize bir tane sayfa döndürecek
        }

        // MVC de default olarak View oluşturmak için verdiği metot türü bu
        // Sağ tıkla View oluşturmamızı sağlayan metot türü ActionResult
        public ActionResult Index3()
        {
            return View();
        }
    }
}