using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ResumeProject.Models;

namespace ResumeProject.Controllers
{
    public class ContactController : Controller
    {
        DbResumeEntities db = new DbResumeEntities();
        // Entities i db nesnesi aracılığıyla çağırıyoruz.

        // GET: Contact
        public ActionResult Index()
        {
            // verileri listeliyoruz
            var values = db.TblContact.ToList();
            return View(values);
        }

        public ActionResult DeleteMessage(int id)
        {
            var values = db.TblContact.Find(id);
            db.TblContact.Remove(values);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult SendMessage()
        {
            List<SelectListItem> values = (from x in db.TblCategory.ToList()
                                           select new SelectListItem
                                           {
                                               Text = x.CategoryName,
                                               Value = x.CategoryID.ToString()
                                           }).ToList();
            ViewBag.v = values; // v değişkeni buradaki bütün listenin ögelerini alır
            return View();
        }

        [HttpPost]
        public ActionResult SendMessage(TblContact p)
        {
            // DateTime.Parse() metodun içindeki ifadeyi tarih zaman formatına dönüştürür
            // DateTime.Now.ToShortDateString() şu anın kısa tarih bilgisini verir
            p.Date = DateTime.Parse(DateTime.Now.ToShortDateString());
            db.TblContact.Add(p);
            db.SaveChanges();
            return RedirectToAction("Index", "Default");
        }
        // SweetAlert2
        // Asp.Net Core Dropdownlist

        public PartialViewResult PartialMap()
        {
            return PartialView();
        }

        public PartialViewResult PartialFeature()
        {
            return PartialView();
        }
    }
}
//Kategori - Crud
//Proje
//Profile
//ilişkili tabloların mvc'de kullanımı, prosedür kullanımı
//istatistiksel entity framework metotları


// ÖDEVLER
// Kategori - Crud (Kategori tablosunun tüm crud işlemleri)
// Proje tablosu (Proje tablosunun tamamlanması)
// Profile tablosu (Profil tablosunun tamamlanması)
// (Bütün CRUD işlemleri, Ekleme Silme Güncelleme işlemleri)
// (Crud işlemleri= Create, Read, Update, Delete.)
// (Ekleme silme güncelleme işlemleri controller tarafında yapılacak)
// (Gelecek derste sol tarafta bu menülerin hepsi çalışır formatta geliyor olsun)
// (Hata alanlar projeleri tamamen yeniden oluşturarak yapmalı)

// Bir sonraki derste işlenecekler
// İlişkili tabloların Mvc'de kullanımı (detaylı olarak)
// Prosedür kullanımı (Mvc'de)
// İstatistiksel entity framework metotları (istatistiksel veriler için)


// ÖDEVLER - 2023.04.14
// Projede temanın orijinalinde yer alan
// Hakkında ve Hizmetler sayfası (default kısmında) tamamlanacak
// Her ikisi için de yeni Controller olmalı
// Çünkü içerikleri kapsamlı
// Hakkında kısmında video eklenmiş
// Hakkında kısmı için projeye bir tane referanslar tablosu eklenebilir

// Admin Panelinde Sol Menüde Eklenecekler
// Feature değeri gibi veritabanından çekilecek değerler
// Öne çıkan kısmı, hakkında kısmı, neler yapıyorum kısmı gibi
// Ana sayfadaki kısımlar sol menüye eklensin