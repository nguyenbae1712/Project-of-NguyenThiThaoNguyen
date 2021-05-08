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
    public class CategoriesController : Controller
    {
        private ClinicManagementEntities2 db = new ClinicManagementEntities2();


        // GET: Categories
        public ActionResult Index()
        {
            return View(db.Categories.ToList());
        }

        public PartialViewResult  GetCategory()
        {
            List<Category> cats = db.Categories.ToList();
            return PartialView("GetCategory", cats);
        }

    }
}
