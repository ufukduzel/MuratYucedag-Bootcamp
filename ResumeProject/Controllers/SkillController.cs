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

        // return View() aynı sayfayı tekrar döndürür
        // return RedirectToAction() başka sayfaya yönlendirmeyi sağlar

        DbResumeEntities db = new DbResumeEntities();
        // Entity Framework metodları:
        // ToList() listeleme yapar
        // Add() ekleme işlemi yapar
        // SaveChanges() değişiklikleri veritabanına yansıtır
        // Find() genel olarak id ye göre arama işlemi yapar
        // Remove() silme işlemi uygular

        public ActionResult Index()
        {
            var values = db.TblSkill.ToList();
            return View(values);
        }

        // Index sayfasında yer alan (küçük) model ve (büyük) Model arasındaki fark araştırılacak.

        [HttpGet] // Sayfa sadece yüklenirken olan işlemler, tasarımı getirme
        public ActionResult AddSkill()
        {
            return View();
        }
        [HttpPost] // Veri girdikten sonra butona tıklama işlemi
        public ActionResult AddSkill(TblSkill p)
        {
            // db entities veritabanını tutuyor
            db.TblSkill.Add(p);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        // Eğer HttpGet ve HttpPost diye ayırmazsak
        // sayfadaki verileri boş olarak kaydeder

        // Build, Rebuild, Clean, Batch Build ne anlama geliyor anlatılacak
        // Build Solution komple bütün projenin derlenmesini sağlar

        // Silme işlemi id ye göre olur.
        // Silme ve güncelleme işlemlerinde verinin getirilmesi işlemlerinde 
        // parametrenin mutlaka id olması gerekiyor. Özel bir sebebi var.
        // Özel sebebi RouteConfig.cs deki ayarla ilgilidir.
        public ActionResult DeleteSkill(int id)
        {
            var value = db.TblSkill.Find(id);
            db.TblSkill.Remove(value);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        // Güncelleme işlemi iki aşamada gerçekleştirilir.
        // Güncellenecek verilerin sayfaya taşınması ve güncellenme işlemi
        [HttpGet] // Güncellenecek verinin getirilme aşaması
        public ActionResult UpdateSkill(int id) // Html.Helpers yapısıyla
        {
            var value = db.TblSkill.Find(id);
            return View(value);
            // id 5 ise value içinde id si 5 olan verinin bütün sütunları olur
        }

        // RouteConfig de id olarak tanımlandığı için x yazılması hata verir
        //public ActionResult UpdateSkill(int x)
        //{ var value = db.TblSkill.Find(x); ... }

        // HttpPut genel olarak api lerde kullanılır

        [HttpPost]
        public ActionResult UpdateSkill(TblSkill p)
        { // Breakpoint
            var value = db.TblSkill.Find(p.SkillID);
            value.SkillTitle = p.SkillTitle;
            value.Skillicon = p.Skillicon;
            value.SkillDescription = p.SkillDescription;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}