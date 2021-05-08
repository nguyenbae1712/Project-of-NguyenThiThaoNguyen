using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ClinicManagement1.Models;

namespace ClinicManagement1.Controllers
{
    public class CustomersController : Controller
    {
        private ClinicManagementEntities db = new ClinicManagementEntities();

        // GET: Customers
        public ActionResult Index()
        {
            return View(db.Customers.ToList());
        }


        // GET: Customers/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Customer customer = db.Customers.Find(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            return View(customer);
        }

        // POST: Customers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,Username,Password,Email,Birthday,Phone")] Customer customer)
        {
            if (ModelState.IsValid)
            {
                db.Entry(customer).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(customer);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        public ActionResult Login(string alert = "")
        {
            if (!String.IsNullOrEmpty(alert))
            {
                ViewBag.login = alert;
            }
            return View();
        }

        [HttpPost]
        public ActionResult Login(string txtUserName, string txtPassWord, int? mode = 0)
        {
            Customer customer = db.Customers.SingleOrDefault(x => x.Username == txtUserName && x.Password == txtPassWord);

            if (customer == null)
            {
                ViewBag.login = "Tài khoản không tồn tại.Bạn đã nhập sai tên đăng nhập hoặc Pass!";
                return View();
            }

            Session["Name"] = customer.Name;
            Session["CustomerId"] = customer.Id;

            return RedirectToAction("index", "home");

        }


        public ActionResult Logout()
        {
            Session["Name"] = null;
            Session["CustomerId"] = null;

            return RedirectToAction("index", "home");
        }

        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Register(string txtUserName, string txtName, string txtPassWord, string txtEmail, string txtPhone)
        {
            var kt = db.Customers.Where(x => x.Username.ToLower() == txtUserName.ToLower());
            if (kt.Count() != 0)
            {
                ViewBag.register = "Tài khoản này đã có người sử dụng. Hãy thử đặt tài khoản khác";
                return View(); // trùng ten tai khoan, dat ten khac
            }
            Customer customer = new Customer();
            customer.Username = txtUserName;
            customer.Name = txtName;
            customer.Password = txtPassWord;
            customer.Email = txtEmail;
            customer.Phone = txtPhone;

            try
            {
                db.Customers.Add(customer);
                db.SaveChanges();
                ViewBag.register = "Đăng ký thành công";
                return View();
            }
            catch (Exception e)
            {
                ViewBag.register = "Đăng ký thất bại . Hãy điển đây đủ thông tin";
                return View();
            }

        }
        [HttpPost]
        public ActionResult UploadImage(HttpPostedFileBase manualfile)
        {
            if(manualfile != null)
            {
                string path = Server.MapPath("~/Assets/images/UploadFile");
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }
                string imageName;
                Image f;
                int id = 1;/*int.Parse(Request.Cookies["Id"].Value);*/
                var acc = from e in db.Customers
                          where e.Id == id
                          select e;
                var oldF = from of in db.Images
                           where of.CustomerId == id
                           select of;
                db.Images.Remove(oldF.FirstOrDefault());
                db.SaveChanges();

                imageName = manualfile.FileName;
                manualfile.SaveAs(path + "\\" + imageName);
                f = new Image();
                f.FileName = imageName;
                f.Path = path + "\\" + imageName;
                f.CustomerId = acc.FirstOrDefault().Id;
                db.Images.Add(f);
                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }

    }
}
