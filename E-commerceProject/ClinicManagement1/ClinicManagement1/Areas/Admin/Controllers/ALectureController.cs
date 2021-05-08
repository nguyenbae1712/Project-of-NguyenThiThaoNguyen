using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ClinicManagement1.Models;

namespace ClinicManagement1.Areas.Admin.Controllers
{
    public class ALectureController : Controller
    {
        // GET: Admin/ALecture
        ClinicManagementEntities2 db = new ClinicManagementEntities2();
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult create(string txtTitle, string txtSubject, string txtContent)
        {
            Lecture l = new Lecture();
            l.EmployeeId = int.Parse(Request.Cookies["Id"].Value.ToString());
            l.Title = txtTitle;
            l.Subject = txtSubject;
            l.Content = txtContent;
            l.CreatedDate = DateTime.Now;
            db.Lectures.Add(l);
            db.SaveChanges();
            
            return RedirectToAction("Table");
        }
        public ActionResult Table()
        {
            return View("Table");
        }
        public JsonResult LoadLecture(string LectureId)
        {
            int id = int.Parse(LectureId);
            var c = db.Lectures.Find(id);
            return Json(new { success = true, LId = c.Id, LTitle = c.Title, LSubject = c.Subject, LContent = c.Content, CDate = c.CreatedDate.ToShortDateString()  }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult DeleteUpdate(int txtId, string txtTitle, string txtSubject, string txtContent, DateTime txtCreatedDate, string btnDelUp)
        {
            int id = txtId;
            Lecture l = db.Lectures.Find(id);
            if (btnDelUp == "delete")
            {
                db.Lectures.Remove(l);
            }
            else
            {
                l.Title = txtTitle;
                l.Subject = txtSubject;
                l.Content = txtContent;
                l.CreatedDate = txtCreatedDate;
                l.UpdateDate = DateTime.Now;
            }
            db.SaveChanges();
            return RedirectToAction("Table");
        }
    }
}