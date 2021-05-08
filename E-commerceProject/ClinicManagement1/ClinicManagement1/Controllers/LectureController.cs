using ClinicManagement1.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ClinicManagement1.Controllers
{
    public class LectureController : Controller
    {
        // GET: Lecture 
        ClinicManagementEntities2 db = new ClinicManagementEntities2();

        public ActionResult Lecture(int? page, int? pagenumber, List<Lecture> listLectures)
        {
            //phan trang pagedlist
            if (page == null) page = 1;
            //int pageSize = pagenumber == null ? 9 : 10000;
            int pageSize = 9;
            int pageNumber = (page ?? 1);
            List<Lecture> lecture = new List<Lecture>();
            if (listLectures != null)
            {
                lecture = listLectures.ToList();
                ViewBag.lecture = lecture;
            }
            else
            {
                lecture = db.Lectures.OrderByDescending(x => x.CreatedDate).Take(3).ToList();
                ViewBag.lecture = lecture;
            }
            return View(lecture.ToPagedList(pageNumber, pageSize));
            //phan trang pagedlist
            //if (page == null) page = 1;
            //int pageSize = pagenumber == null ? 9 : 10000;
            ////int pageSize = 9;
            //int pageNumber = (page ?? 1);
            //List<Lecture> lectures = new List<Lecture>();
            //if (listLectures != null)
            //{
            //    lectures = listLectures.ToList();
            //    ViewBag.lectures = lectures;
            //}
            //else
            //{
            //    lectures = db.Lectures.OrderByDescending(x => x.CreatedDate).ToList();
            //    ViewBag.lectures = lectures;
            //}
            //return View(lectures.ToPagedList(pageNumber, pageSize));
        }
        public ActionResult DetailLecture(int id)
        {
           Lecture lecture = new Lecture();
            lecture = db.Lectures.SingleOrDefault(x => x.Id == id);
            ViewBag.lecture = lecture;
            if (lecture == null)
            {
                return View("ThongBaoLoi");
            }
            ViewBag.category = db.Categories.SingleOrDefault(x => x.Id == lecture.Id);

            return View(lecture);
            
        }
    }
}