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

namespace ClinicManagement1.Areas.Admin.Controllers
{
    public class ImageController : Controller
    {
        private ClinicManagementEntities2 db = new ClinicManagementEntities2();
        public static int id1 = 0;
        // GET: Admin/Images
        public ActionResult Index(int id)
        {
            //var images = db.Images.Include(i => i.Customer).Include(i => i.Employee).Include(i => i.Product);            
            var images = db.Images.Where(i => i.ProductId == id);
            if (id1 != id)
            {
                id1 = (int)id;
            }
            TempData["idProduct"] = id.ToString();
            //return View(images.ToList());
            return View();
        }

        // GET: Admin/Images/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Image image = db.Images.Find(id);
            if (image == null)
            {
                return HttpNotFound();
            }
            return View(image);
        }

        // GET: Admin/Images/Create
        public ActionResult Create(string Alter = "")
        {
            //ViewBag.CustomerId = new SelectList(db.Customers, "Id", "Name");
            //ViewBag.EmployeeId = new SelectList(db.Employees, "Id", "Name");
            //ViewBag.ProductId = new SelectList(db.Products, "Id", "ProductName");
            ViewBag.Id = id1;
            ViewBag.Alter = Alter;
            return View();
        }

        // POST: Admin/Images/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,ProductId,EmployeeId,CustomerId,Path,FileName,Type")] Image image, IEnumerable<HttpPostedFileBase> imageProducts)
        {
            if (ModelState.IsValid)
            {
                if (imageProducts != null)
                {
                    foreach (var file in imageProducts)
                    {
                        try
                        {
                            if (file.ContentLength > 0)
                            {
                                var filename = Path.GetFileName(file.FileName);
                                var path = Path.Combine(Server.MapPath("~/Assets/images/product"), filename);
                                file.SaveAs(path);
                                image.FileName = filename;
                                image.Path = "/Assets/images/product" + filename;
                                image.ProductId = id1;
                                //Image image = new Image();
                                //image.FileName = filename;
                                //image.Path = path;
                                //image.EmployeeId = null;
                                //image.ProductId = product.Id;
                                //image.CustomerId = null;
                                db.Images.Add(image);
                                db.SaveChanges();
                            }
                        }
                        catch
                        {
                            RedirectToAction("Index", new { Alter = "Chosse your Picture" });
                        }

                    }
                }
                return RedirectToAction("Index", new { id = id1 });
            }

            //ViewBag.CustomerId = new SelectList(db.Customers, "Id", "Name", image.CustomerId);
            //ViewBag.EmployeeId = new SelectList(db.Employees, "Id", "Name", image.EmployeeId);
            //ViewBag.ProductId = new SelectList(db.Products, "Id", "ProductName", image.ProductId);
            return View(image);
        }

        // GET: Admin/Images/Edit/5
        public ActionResult Edit(int? id, string Alter)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Image image = db.Images.Find(id);
            ViewBag.Alter = Alter;
            if (image == null)
            {
                return HttpNotFound();
            }
            //ViewBag.CustomerId = new SelectList(db.Customers, "Id", "Name", image.CustomerId);
            //ViewBag.EmployeeId = new SelectList(db.Employees, "Id", "Name", image.EmployeeId);
            //ViewBag.ProductId = new SelectList(db.Products, "Id", "ProductName", image.ProductId);
            
            return View();
        }

        // POST: Admin/Images/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,ProductId,EmployeeId,CustomerId,Path,FileName,Type")] Image image, IEnumerable<HttpPostedFileBase> imageProducts)
        {
            if (ModelState.IsValid)
            {
                if (imageProducts != null)
                {
                    foreach (var file in imageProducts)
                    {
                        try
                        {
                            if (file.ContentLength > 0)
                            {
                                Image image1 = db.Images.Find(image.Id);
                                var filepath = image1.Path;
                                if (System.IO.File.Exists(filepath))
                                {
                                    System.IO.File.Delete(filepath);
                                }
                                var filename = Path.GetFileName(file.FileName);
                                var path = Path.Combine(Server.MapPath("~/Assets/images/product"), filename);
                                file.SaveAs(path);
                                image1.FileName = filename;
                                image1.Path = "/Assets/images/product" + filename;
                                image1.ProductId = id1;
                                //Image image = new Image();
                                //image.FileName = filename;
                                //image.Path = path;
                                image1.EmployeeId = null;
                                //image.ProductId = product.Id;
                                image1.CustomerId = null;
                                db.Entry(image1).State = EntityState.Modified;
                                db.SaveChanges();
                            }
                        }
                        catch
                        {
                            return RedirectToAction("Edit", new { Alter = "Choose your Picture" });
                        }

                    }
                }
                return RedirectToAction("Index", new { id = id1 });
            }
            //ViewBag.CustomerId = new SelectList(db.Customers, "Id", "Name", image.CustomerId);
            //ViewBag.EmployeeId = new SelectList(db.Employees, "Id", "Name", image.EmployeeId);
            //ViewBag.ProductId = new SelectList(db.Products, "Id", "ProductName", image.ProductId);
            return View(image);
        }

        // GET: Admin/Images/Delete/5
        public ActionResult Delete(int? id)
        {
            //if (id == null)
            //{
            //    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            //}
            //Image image = db.Images.Find(id);
            //if (image == null)
            //{
            //    return HttpNotFound();
            //}
            //return View(image);
            Image image = db.Images.Find(id);
            var filepath = Path.Combine(Server.MapPath("/Assets/images/product"), image.FileName);
            if (System.IO.File.Exists(filepath))
            {
                System.IO.File.Delete(filepath);
            }
            db.Images.Remove(image);
            db.SaveChanges();
            return RedirectToAction("Index", new { id = id1 });
        }

        // POST: Admin/Images/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Image image = db.Images.Find(id);
        //    var filepath = image.Path;
        //    if (System.IO.File.Exists(filepath))
        //    {
        //        System.IO.File.Delete(filepath);
        //    }
        //    db.Images.Remove(image);
        //    db.SaveChanges();
        //    return RedirectToAction("Index", new { id = id1 });
        //}

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        public ActionResult Add(HttpPostedFileBase manualfile, string btnAdd)
        {
            if (manualfile != null && btnAdd != null)
            {
                string path = Server.MapPath("~/Assets/images/product");
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }
                string imageName;
                Image f;
                int id = int.Parse(btnAdd);

                imageName = manualfile.FileName;
                manualfile.SaveAs(path + "\\" + imageName);

                f = new Image();
                f.FileName = imageName;
                f.Path = "/Assets/images/product" + "\\" + imageName;
                f.ProductId = id;
                db.Images.Add(f);

                db.SaveChanges();
            }
            return RedirectToAction("Index", new { id = id1 });
        }
    }
}
