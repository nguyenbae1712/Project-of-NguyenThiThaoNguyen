using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ClinicManagement1.Models;

namespace ClinicManagement1.Areas.Admin.Controllers
{
    [Authorize(Roles = "admin")]
    public class DashboardController : Controller
    {
        // GET: Admin/Dashboard
        ClinicManagementEntities2 db = new ClinicManagementEntities2();
        
        public ActionResult Index()
        {
            
            return View();
        }
        public JsonResult LoadOrder(string OrderId)
        {
            int id = int.Parse(OrderId);
            var c = db.OrderDetails.Where(x => x.OrderId == id).ToList();
            var o = db.Orders.Find(int.Parse(OrderId));
            decimal total1 = 0;
            foreach (var item in c)
            {
                total1 += (item.Product.Price_out * item.Quanity);
                ;
            }
            return Json(new { success = true, emName = o.Employee.Name, CreatedDate = o.CreatedDate.ToShortDateString(), total = total1, CusName = o.Customer.Name, des = o.Description }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult LoadOrderDetail(string OrderId)
        {

            int id = int.Parse(OrderId);
            var c = db.Orders.Find(id);
            Response.Cookies["OrderDetail"].Value = id.ToString();
            return Json(new { success = true, orderId = c.Id, cookie = Response.Cookies["OrderDetail"].Value }, JsonRequestBehavior.AllowGet);
        }
    }
}