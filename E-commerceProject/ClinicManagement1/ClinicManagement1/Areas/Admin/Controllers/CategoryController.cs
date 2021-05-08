using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ClinicManagement1.Models;

namespace ClinicManagement1.Areas.Admin.Controllers
{
    public class CategoryController : Controller
    {
        // GET: Admin/Category
        ClinicManagementEntities2 db = new ClinicManagementEntities2();
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult create(string txtName, string txtDes)
        {
            Category c = new Category();
            c.CategoryName = txtName;
            c.CreatedDate = DateTime.Now;
            c.Description = txtDes;
            db.Categories.Add(c);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public JsonResult LoadCategory(string CateId)
        {
            var c = db.Categories.Find(int.Parse(CateId));
            return Json(new { success = true, id = c.Id, name = c.CategoryName, date = c.CreatedDate.ToShortDateString(), des = c.Description }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult DeleteUpdate(string txtId,string txtName, string txtCreatedDate, string txtDes, string btnDelUp)
        {
            int id = int.Parse(txtId);
            Category c = db.Categories.Find(id);
            if(btnDelUp == "delete")
            {
                db.Categories.Remove(c);
            }
            else
            {
                c.CategoryName = txtName.ToString();
                c.CreatedDate = DateTime.Parse(txtCreatedDate.ToString());
                c.UpdateDate = DateTime.Now;
                c.Description = txtDes.ToString();
            }
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}