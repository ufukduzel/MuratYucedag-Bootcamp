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
    }
}

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