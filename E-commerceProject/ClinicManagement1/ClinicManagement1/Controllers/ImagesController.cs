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
        private ClinicManagementEntities2 db = new ClinicManagementEntities2();

        public string getImage(int id ,string type)
        {
            Image image = new Image();
            if (type == "quangcao")
            {
                image = db.Images.Where(x => x.ProductId == id && type == "quangcao").FirstOrDefault();
            }
            else
            {
                image = db.Images.Where(x => x.ProductId == id ).FirstOrDefault();
            }
            if (image != null)
            {
                return image.Path;
            }
            return "";
        }
        public string getImgLecture(int id)
        {
            Image image = db.Images.Where(x => x.LectureId == id).FirstOrDefault();
            if (image != null)
            {
                return image.Path;
            }
            return "";
        }
    }
}
