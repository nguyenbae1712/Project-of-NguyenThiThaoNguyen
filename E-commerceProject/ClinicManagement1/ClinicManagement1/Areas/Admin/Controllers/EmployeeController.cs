using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;
using ClinicManagement1.Models;
using Common;

namespace ClinicManagement1.Areas.Admin.Controllers
{
    [Authorize(Roles = "admin")]
    public class EmployeeController : Controller
    {
        // GET: Admin/Employee
        ClinicManagementEntities2 db = new ClinicManagementEntities2();
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult create(string txtRole, string txtName, string txtUsername, string txtPasswork, string txtEmail)
        {
            Employee e = new Employee();
            e.RoleId = db.Roles.FirstOrDefault(x => x.RoleName == txtRole).Id;
            e.Name = txtName;
            e.Username = txtUsername;
            e.Password = MD5Hash(txtPasswork);
            e.Email = txtEmail;
            e.CreatedDate = DateTime.Now;
            e.State = true;
            db.Employees.Add(e);
            db.SaveChanges();

            string content = System.IO.File.ReadAllText(Server.MapPath("~/Areas/Admin/Views/Shared/SendPass.html"));
            content = content.Replace("{{Username}}", e.Username);
            content = content.Replace("{{PassWork}}", txtPasswork);
            new MailHelper().SendMail(e.Email, "User", content, "User");

            return RedirectToAction("Index");
        }
        [HttpPost]
        public ActionResult delete(string txtIdDelete, string btnDelete)
        {
            int id = int.Parse(txtIdDelete);
            if (db.Employees.Find(id) != null)
            {
                var e = db.Employees.Where(x => x.Id == id && x.RoleId == 1).FirstOrDefault();
                if (btnDelete == "delete")
                {
                    db.Employees.Remove(e);
                }
                if (btnDelete == "unactive")
                {
                    e.State = !e.State;
                }
                db.SaveChanges();
                TempData["notiDelete"] = "true";
            }
            else
            {
                TempData["notiDelete"] = "false";
            }
            return RedirectToAction("Index");
        }
        public ActionResult unActive(int id)
        {
            var e = db.Employees.Where(x => x.Id == id).FirstOrDefault();
            e.State = false;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public string MD5Hash(string input)
        {
            StringBuilder hash = new StringBuilder();
            MD5CryptoServiceProvider md5provider = new MD5CryptoServiceProvider();
            byte[] bytes = md5provider.ComputeHash(new UTF8Encoding().GetBytes(input));

            for (int i = 0; i < bytes.Length; i++)
            {
                hash.Append(bytes[i].ToString("x2"));
            }
            return hash.ToString();
        }
        public JsonResult LoadEmployee(string EmId)
        {
            var c = db.Employees.Find(int.Parse(EmId));
            return Json(new { success = true, id = c.Id, name = c.Name}, JsonRequestBehavior.AllowGet);
        }
    }
}