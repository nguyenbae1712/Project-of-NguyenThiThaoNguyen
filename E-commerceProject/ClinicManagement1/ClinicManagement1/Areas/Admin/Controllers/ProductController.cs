using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ClinicManagement1.Models;

namespace ClinicManagement1.Areas.Admin.Controllers
{
    public class ProductController : Controller
    {
        // GET: Admin/Product
        ClinicManagementEntities2 db = new ClinicManagementEntities2();
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult create(int txtCateId, string txtName, int txtPriceIn, int txtPriceOut, int txtDiscount, DateTime txtWaDate, string txtDes, HttpPostedFileBase manualfile)
        {
            Product p = new Product();
            p.CategoryId = txtCateId;
            p.ProductName = txtName;
            p.Price_in = txtPriceIn;
            p.Price_out = txtPriceOut;
            p.Discount = txtDiscount;
            p.WarrantyDate = txtWaDate;
            p.Description = txtDes;
            p.CreatedDate = DateTime.Now;
            if (manualfile != null)
            {
                //string path = Server.MapPath("~/content/asset/UploadFile");
                string path = Server.MapPath("~/Assets/images/product");
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }
                string imageName;
                Image f;

                imageName = manualfile.FileName;
                manualfile.SaveAs(path + "\\" + imageName);

                f = new Image();
                f.FileName = imageName;
                f.Path = "/Assets/images/product" + "\\" + imageName;
                if (txtDes != null && txtDes == "advertising")
                {
                    f.Type = "advertising";
                }
                p.Images.Add(f);
                db.Images.Add(f);

                db.SaveChanges();
            }
            db.Products.Add(p);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public JsonResult LoadProduct(string proId)
        {
            var p = db.Products.Find(int.Parse(proId));
            string a = p.CreatedDate.ToShortDateString();
            if(p.WarrantyDate == null)
            {
                return Json(new { success = true, id = p.Id, cateName = p.Category.CategoryName, name = p.ProductName, prIn = p.Price_in, prOut = p.Price_out,
                discount = p.Discount, createdDate = a, waDate = "", view = p.View, des = p.Description }, JsonRequestBehavior.AllowGet);
            }
            return Json(new { success = true, id = p.Id, cateName = p.Category.CategoryName, name = p.ProductName, prIn = p.Price_in, prOut = p.Price_out,
                discount = p.Discount, createdDate = a, waDate = p.WarrantyDate.ToString(), view = p.View, des = p.Description }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult DeleteUpdate(string btnDelUp, string txtId, string txtCateName, string txtName, int txtPriceIn, int txtPriceOut,int txtDiscount, DateTime txtcreatedDate, DateTime txtwaDate,int txtView, string txtDes)
        {
            Product p = db.Products.Find(int.Parse(txtId));
            if(btnDelUp.ToString() == "update")
            {
                int cateId = db.Categories.Where(x => x.CategoryName == txtCateName).FirstOrDefault().Id;
                p.CategoryId = cateId;
                p.ProductName = txtName;
                p.Price_in = txtPriceIn;
                p.Price_out = txtPriceOut;
                p.Discount = txtDiscount;
                p.CreatedDate = txtcreatedDate;
                p.UpdateDate = DateTime.Now;
                p.WarrantyDate = txtwaDate;
                
                if(txtView != null)
                {
                    p.View = txtView;
                }
                else
                {
                    p.View = p.View;
                }
                if (txtDes != null)
                {
                    p.Description = txtDes;
                }

            }
            else
            {
                db.Products.Remove(p);
            }
            db.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}