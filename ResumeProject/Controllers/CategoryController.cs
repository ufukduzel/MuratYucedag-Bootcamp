using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ResumeProject.Models;
//Remove Unnecessary Usings seçeneğiyle kullanılmayan kütüphaneler kaldırılır

namespace ResumeProject.Controllers
{
    public class CategoryController : Controller
    {
        DbResumeEntities db = new DbResumeEntities();

        // GET: Category
        public ActionResult Index()
        {
            var values = db.TblCategory.ToList(); // values opsiyonel isimdir
            return View(values); // values yazmasak değerleri boş getirir
        }

        // Post sayfada bir şey tetiklendiği zaman çalışır
        // Get sayfayı göstermeye yarar
        [HttpGet] // Attribute yapısı
        public ActionResult AddCategory()
        {
            return View();
        }

        [HttpPost]
        // AddCategory2 ismiyle farklı view içerisinde çalıştırma şansımız var
        // Asp.Net Core da bu olay çok daha basit hale geldi,
        // Core a asp-action diye bir helper geldi, işlemleri çok kolaylaştırdı.
        // Mvc de Html BeginForm diye bir metot var,
        // bu Html Beginform un içinde farklı metotlara yönlendirme yapabiliyoruz
        // yani aynı sayfa içinde olmak zorunda değil
        public ActionResult AddCategory(TblCategory p)
        {
            db.TblCategory.Add(p);
            db.SaveChanges();
            //return View(); // böyle kalırsa aynı sayfada kalır bir yere gitmez,
            // yani redirecttoaction yapmadan bunun eklenip eklenmediğini göremem
            return RedirectToAction("Index");
        }
        // Over load da mutlaka parametrelerin birbirinden farklı olması gerekir

        //public ActionResult DeleteCategory(int x) // burada x diyemeyiz id demek zorundayız,
        //mvc de routeconfig sınıfı içindeki kuraldan dolayı,
        //asp.net core da startup içindeki kuraldan dolayı (6 versiyonu ile beraber startup da kalktı)
        public ActionResult DeleteCategory(int id)
        {
            var values = db.TblCategory.Find(id);
            db.TblCategory.Remove(values);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpGet] // Burada sayfaya güncellenecek bilgileri getiriyoruz,
        //güncellemek istediğim veriyi id ye göre güncelleme sayfasına taşıyorum
        public ActionResult UpdateCategory(int id)
        {
            var values = db.TblCategory.Find(id); // göndermiş olduğumuz id ye göre ilgili değeri bulup values içine çekiyoruz
            return View(values);
        }

        [HttpPost] // Parametre olarak Category tablosundan bir nesne kullandık
        public ActionResult UpdateCategory(TblCategory p)
        {
            var values = db.TblCategory.Find(p.CategoryID); // index de hiddenfor olmazsa bu işlem ID yi bulamadığı için gerçekleşmiyor
            // p den sonra nokta koyunca Category tablosunun property leri gelir
            values.CategoryName = p.CategoryName;
            // veritabanındaki values değeri içindeki CategoryName i bizim yolladığımız p sınıfı içindeki CategoryName ile değiştir diyoruz
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        // ID ye göre mesaj getirme
        public ActionResult GetMessageBySubject(int id)
        {
            // SQL eşdeğeri -> Select * From TblContact Where Subject=1
            var values = db.TblContact.Where(x => x.Subject == id).ToList();
            return View(values);
        }
    }
}