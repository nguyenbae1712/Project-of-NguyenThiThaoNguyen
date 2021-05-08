using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using System.Web.UI;
using ClinicManagement1.Models;

namespace ClinicManagement1.Areas.Admin.Controllers
{
    public class AccountController : Controller
    {
        // GET: Admin/Account
        public ClinicManagementEntities2 db = new ClinicManagementEntities2();
        public ActionResult Login()
        {
            return View();
        }
        public ActionResult Logout()
        {
            Response.Cookies["Id"].Value = null;
            return RedirectToAction("Login");
        }
        public ActionResult nhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult checkLogin(string txtUsername, string txtPassword)
        {
            txtPassword = MD5Hash(txtPassword);
            
            var obj = db.Employees.Where(x => x.Username == txtUsername && x.Password == txtPassword).SingleOrDefault();
            if(obj != null)
            {
                FormsAuthentication.SetAuthCookie("user" + obj.Id, false);
                Response.Cookies["Id"].Value = obj.Id.ToString();
                Response.Cookies["OrderDetail"].Value = "1";
                return RedirectToAction("Index", "AHome", obj.Id );
            }
            return RedirectToAction("Login");
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
    }
}