using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ResumeProject.Models; // Entity leri model klasörü altından çekebilmek için bunu ekliyoruz

namespace ResumeProject.Controllers
{
    public class TechnologyController : Controller
    {
        DbResumeEntities db = new DbResumeEntities();

        // GET: Technology
        public ActionResult Index()
        {
            var values = db.TblTechnology.ToList();
            return View(values); // Parantez içine values yazmazsak View e veriler gitmez.
        }

        // Get ve Post arasındaki farkı görmek için başlangıçta onları yazmadık.
        //public ActionResult AddTechnology(TblTechnology p)
        //{
        //    db.TblTechnology.Add(p);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}
        // Get ve Post metotlarını vermeyince sayfa açılır açılmaz veritabanına otomatik boş kayıt atıyor.
        // Aslında bu durumda sayfa yüklenir yüklenmez post işlemi devreye giriyor boş sayfa gelmeden boş kayıt gönderilmiş oluyor, bunu ayarlamak için HttpGet ve HttpPost olarak sayfada ayırma yapıyoruz

        // Bu sayfa yüklendiğinde geriye sadece boş textbox lı bir sayfa döndürür
        [HttpGet]
        public ActionResult AddTechnology()
        {
            return View();
        }

        // Bu metodun çalışması için sayfada bir butona tıklanması gerekiyor
        [HttpPost]
        public ActionResult AddTechnology(TblTechnology p)
        {
            db.TblTechnology.Add(p);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult DeleteTechnology(int id)
        {
            var value = db.TblTechnology.Find(id);
            // Find metodu id ye göre hareket eder ve ilgili değeri buldurur.
            db.TblTechnology.Remove(value); // Remove metodu silme işlemi yapar
            db.SaveChanges(); // Değişiklikleri veritabanına kaydeder
            return RedirectToAction("Index"); // Index tarafına yönlendirir
        }

        // Güncelleme işlemi eklemede olduğu gibi Get ve Post olarak iki aşamada gerçekleştirilir
        // id ye göre ilgili verileri güncelleme sayfasına taşıyoruz
        [HttpGet]
        public ActionResult UpdateTechnology(int id)
        {
            var value = db.TblTechnology.Find(id); // id den gelen değeri getirir
            return View(value);
            // Gelen değeri bize döndürür. View içinde value olmazsa boş döner
        }

        // Güncelleme parametre olarak id değil tablonun kendisini alır.
        // p opsiyonel isimdir değişebilir
        [HttpPost]
        public ActionResult UpdateTechnology(TblTechnology p)
        {
            var value = db.TblTechnology.Find(p.TechnologyID);
            value.TechnologyITitle = p.TechnologyITitle;
            value.TechnologyIValue = p.TechnologyIValue;
            db.SaveChanges(); // Bu eklenmezse değişikliği veritabanına kaydetmez
            return RedirectToAction("Index");
        }
    }
}