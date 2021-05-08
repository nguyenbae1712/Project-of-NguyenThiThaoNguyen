using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using ClinicManagement1.Models;
using System.Net.Mail;
using System.Text;
using System.Security.Cryptography;
using System.Web.UI;
using Common;

namespace ClinicManagement1.Areas.Admin.Controllers
{
    public class AHomeController : Controller
    {
        // GET: Admin/Home
        public ClinicManagementEntities2 db = new ClinicManagementEntities2();
        public static int tam = 0;
        
        public ActionResult Index()
        {
            string ngayHeThong = DateTime.Now.ToString(" MM/dd/yyyy");
            DateTime ngayHienTai = Convert.ToDateTime(ngayHeThong); 
            if(tam == 0)
            {
                foreach (var item in db.Customers)
                {
                    string birthday = item.Birthday.ToString();
                    DateTime Birthday = Convert.ToDateTime(birthday);
                    if (Birthday.Day == ngayHienTai.Day && Birthday.Month == ngayHienTai.Month)
                    {
                        string content = System.IO.File.ReadAllText(Server.MapPath("~/Areas/Admin/Views/Shared/Birthday.html"));
                        string path = Server.MapPath("~/Content/asset/img/avatar.jpg");
                        new MailHelper().SendMail(item.Email, "HAPPY BIRTH DAY", content, "HAPPY BIRTH DAY", path);

                    }
                }
                tam = 1;
            }
                
            
            return View();
        }
        [HttpPost]
        public ActionResult changeAva(HttpPostedFileBase manualfile)
        {
            if (manualfile != null)
            {
                string path = Server.MapPath("/Assets/images/UploadFile");
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }
                string imageName;
                Image f;
                int id = int.Parse(Request.Cookies["Id"].Value);
                var acc = from e in db.Employees
                          where e.Id == id
                          select e;
                var oldF = from of in db.Images
                           where of.EmployeeId == id
                           select of;
                if(oldF.FirstOrDefault() != null)
                {
                    db.Images.Remove(oldF.SingleOrDefault());
                    db.SaveChanges();
                }
                

                imageName = manualfile.FileName;
                manualfile.SaveAs(path + "\\" + imageName);

                f = new Image();
                f.FileName = imageName;
                f.Path = "\\Assets\\images\\UploadFile" + "\\" + imageName;
                f.EmployeeId = acc.FirstOrDefault().Id;
                db.Images.Add(f);

                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }
        [HttpPost]
        public ActionResult editProfile(string txtName, string txtEmail, string txtPhone, string txtAddress)
        {
            if(txtName != null || txtEmail != null || txtPhone != null || txtAddress != null || IsValid(txtEmail))
            {
                int id = int.Parse(Request.Cookies["Id"].Value);
                var acc = from e in db.Employees
                          where e.Id == id
                          select e;
                acc.FirstOrDefault().Name = txtName.ToString();
                acc.FirstOrDefault().Email = txtEmail.ToString();
                acc.FirstOrDefault().Phone = txtPhone.ToString();
                acc.FirstOrDefault().Address = txtAddress.ToString();
                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }

        public bool IsValid(string emailaddress)
        {
            try
            {
                MailAddress m = new MailAddress(emailaddress);

                return true;
            }
            catch (FormatException)
            {
                return false;
            }
        }

        [HttpPost]
        public ActionResult changePassword(string validate_username, string validate_password, string validate_Newpassword)
        {
            validate_password = MD5Hash(validate_password);
            var acc = db.Employees.Where(x => x.Username == validate_username && x.Password == validate_password).SingleOrDefault();
            if (acc != null)
            {
                validate_Newpassword = MD5Hash(validate_Newpassword);
                acc.Password = validate_Newpassword;
                db.SaveChanges();
                TempData["changePass"] = "true";
                
            }
            else
            {
                TempData["changePass"] = "false";
                
            }
            return RedirectToAction("Index");
        }
        public static string MD5Hash(string input)
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