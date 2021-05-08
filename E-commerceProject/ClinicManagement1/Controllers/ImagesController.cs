using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ClinicManagement1.Models;

namespace ClinicManagement1.Controllers
{
    public class ImagesController : Controller
    {
        private ClinicManagementEntities db = new ClinicManagementEntities();

        //// GET: Images
        //public ActionResult Index()
        //{
        //    var images = db.Images.Include(i => i.Customer).Include(i => i.Employee).Include(i => i.Product);
        //    return View(images.ToList());
        //}

        //// GET: Images/Details/5
        //public ActionResult Details(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Image image = db.Images.Find(id);
        //    if (image == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(image);
        //}

        //// GET: Images/Create
        //public ActionResult Create()
        //{
        //    ViewBag.CustomerId = new SelectList(db.Customers, "Id", "Name");
        //    ViewBag.EmployeeId = new SelectList(db.Employees, "Id", "Name");
        //    ViewBag.ProductId = new SelectList(db.Products, "Id", "ProductName");
        //    return View();
        //}

        //// POST: Images/Create
        //// To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        //// more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Create([Bind(Include = "Id,ProductId,EmployeeId,CustomerId,Path,FileName,Type")] Image image)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.Images.Add(image);
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }

        //    ViewBag.CustomerId = new SelectList(db.Customers, "Id", "Name", image.CustomerId);
        //    ViewBag.EmployeeId = new SelectList(db.Employees, "Id", "Name", image.EmployeeId);
        //    ViewBag.ProductId = new SelectList(db.Products, "Id", "ProductName", image.ProductId);
        //    return View(image);
        //}

        //// GET: Images/Edit/5
        //public ActionResult Edit(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Image image = db.Images.Find(id);
        //    if (image == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    ViewBag.CustomerId = new SelectList(db.Customers, "Id", "Name", image.CustomerId);
        //    ViewBag.EmployeeId = new SelectList(db.Employees, "Id", "Name", image.EmployeeId);
        //    ViewBag.ProductId = new SelectList(db.Products, "Id", "ProductName", image.ProductId);
        //    return View(image);
        //}

        //// POST: Images/Edit/5
        //// To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        //// more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Edit([Bind(Include = "Id,ProductId,EmployeeId,CustomerId,Path,FileName,Type")] Image image)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.Entry(image).State = EntityState.Modified;
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }
        //    ViewBag.CustomerId = new SelectList(db.Customers, "Id", "Name", image.CustomerId);
        //    ViewBag.EmployeeId = new SelectList(db.Employees, "Id", "Name", image.EmployeeId);
        //    ViewBag.ProductId = new SelectList(db.Products, "Id", "ProductName", image.ProductId);
        //    return View(image);
        //}

        //// GET: Images/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Image image = db.Images.Find(id);
        //    if (image == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(image);
        //}

        //// POST: Images/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Image image = db.Images.Find(id);
        //    db.Images.Remove(image);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}

        //protected override void Dispose(bool disposing)
        //{
        //    if (disposing)
        //    {
        //        db.Dispose();
        //    }
        //    base.Dispose(disposing);
        //}
        public string getImage(int id)
        {
            Image image = db.Images.Where(x => x.ProductId == id).FirstOrDefault();
            if (image != null)
            {
                return image.Path;
            }
            return "";
        }

    }
}
