using ClinicManagement1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ClinicManagement1.Controllers
{
    public class HomeController : Controller
    {

        ClinicManagementEntities2 db = new ClinicManagementEntities2();
        public ActionResult Index()
        {
            // hiển thị sản phẩm hot
            List<Product> popularproduct = db.Products.Take(6).ToList();
            ViewBag.popularproduct = popularproduct;

            // hiển thị slide quảng cáo
            List<ProductAdvertising> advertising = db.ProductAdvertisings.Take(3).ToList();
            ViewBag.advertising = advertising;

            // hiển thị slider sản phẩm trang chủ
            List<Product> slideproduct = db.Products.Take(6).OrderByDescending(x => x.Id).ToList();
            ViewBag.slideproduct = slideproduct;

            return View();
        }
    }
}