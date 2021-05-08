﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ClinicManagement1.Models;
using PagedList;

namespace ClinicManagement1.Controllers
{
    public class ProductsController : Controller
    {
        private ClinicManagementEntities db = new ClinicManagementEntities();

        
        public PartialViewResult ProductListPartial(int? page,int? pagenumber ,int ? category, List<Product> listProducts)
        {
            //phan trang pagedlist
            if (page == null) page = 1;
            int pageSize = pagenumber == null ? 9 : 10000;
            //int pageSize = 9;
            int pageNumber = (page ?? 1);
            //if(category != null)
            //{
            //    var productList = db.Products
            //                    .OrderByDescending(x => x.Id).Where(x => x.CategoryId == category)
            //                    .ToPagedList(pageNumber, pageSize);
            //    return PartialView(productList);
            //}
            //else
            //{
            //var productList = db.Products.OrderByDescending(x => x.CreatedDate).ToPagedList(pageNumber, pageSize);
            List<Product> products = new List<Product>();
            if (listProducts != null)
            {
                products = listProducts.ToList();
                ViewBag.products = products;
            }
            else
            {
                products = db.Products./*Where(x => x.CategoryId == categoryid).*/OrderByDescending(x => x.CreatedDate).ToList();
                ViewBag.products = products;
            }
            return PartialView(products.ToPagedList(pageNumber, pageSize));
            //}
            
        }

        // trang xem chi tiet
        public ActionResult XemChiTiet(int id)
        {
            Product product = new Product();
            product = db.Products.SingleOrDefault(x => x.Id == id);
            ViewBag.product = product;
            if (product == null)
            {
                return View("ThongBaoLoi");
            }
            ViewBag.category = db.Categories.SingleOrDefault(x => x.Id == product.CategoryId);

            //list sản phẩm giảm giá
            List<Product> sanPhamGiamGia = db.Products.Where(x => x.CategoryId == product.CategoryId &&  x.Discount > 0 == true).OrderBy(x => Guid.NewGuid()).Take(4).ToList();
            ViewBag.sanPhamGiamGia = sanPhamGiamGia;

            return View(product);
        }
        public ActionResult SanPhamView( int? categoryid, List<Product> listProducts,int? page,int?pagenumber)
        {
            //phan trang pagedlist
            if (page == null) page = 1;
            int pageSize = pagenumber == null ? 9 : 10000;
            //int pageSize = 9;
            int pageNumber = (page ?? 1);
            List<Product> products = new List<Product>();
            if (listProducts != null)
            {
                products = listProducts.ToList();
                ViewBag.products = products;
            }
            else
            {
                products = db.Products.Where(x => x.CategoryId == categoryid ).OrderByDescending(x => x.CreatedDate).ToList();
                ViewBag.products = products;
            }
            
            return PartialView(products.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult SanPhamNoiBat(int? skip, int? categoryid, List<Product> listProducts)
        {
            List<Product> products = new List<Product>();
            if (listProducts != null)
            {
                products = listProducts.ToList();
            }
            else
            {
                products = db.Products.Where(x => x.CategoryId == categoryid && x.View != null).OrderByDescending(x => x.View).ToList();
            }


            return PartialView(products);
            
        }

        // trang tất cả sản phẩm phía người dùng
        public static int? categoryid_luu;
        public static int? giatu_luu;
        public static int? den_luu;
        public static int? sapxep_luu;
        public ActionResult TatCaSanPham(int? categoryid, int? giatu, int? den, int? sapxep, int? reset,int ? page, int? pagenumber)
        {

            categoryid_luu = categoryid == null ? categoryid_luu : categoryid;
            giatu_luu = giatu == null ? giatu_luu : giatu;
            den_luu = den == null ? den_luu : den;
            sapxep_luu = sapxep == null ? sapxep_luu : sapxep;

            if (reset == 1)  //reset tất cả
            {
                giatu_luu = den_luu = sapxep_luu  = null;
            }
            if (reset == 2)  //reset lọc giá
            {
                giatu_luu = den_luu = null;
            }
            if (reset == 3)  //reset sap xếp mặc định
            {
                sapxep_luu = null;
            }

            List<Product> products = db.Products.Where(x => x.CategoryId == categoryid_luu == true).OrderBy(x => x.CreatedDate).ToList();

            //loc theo gia
            if (giatu_luu != null && den_luu != null)
            {
                List<Product> list = new List<Product>();

                foreach (var item in products)
                {
                    var giacuoi = item.Price_out - item.Discount;
                    var giaSanPham = item.Discount == null ? item.Price_out : giacuoi;
                    if (giaSanPham >= giatu_luu  && giaSanPham <= den_luu && giaSanPham != 0)
                    {
                        list.Add(item);
                    }
                }
                products = list;
            }

            //sap xep
            if (sapxep_luu == 1)  // giá tăng dần
            {
                products = products.OrderBy(x => (x.Price_out - x.Discount).GetValueOrDefault(0) != 0 ? (x.Price_out - x.Discount) : x.Price_out).ToList();
            }
            if (sapxep_luu == 2)  // giá giảm dần
            {
                products = products.OrderByDescending(x => (x.Price_out - x.Discount).GetValueOrDefault(0) != 0 ? (x.Price_out - x.Discount) : x.Price_out).ToList();
            }

            var category = db.Categories.FirstOrDefault(x => x.Id == categoryid_luu);
            if (category != null)
            {
                ViewBag.categoryid = category.Id;
                ViewBag.categoryname = category.CategoryName;
            }

            {
                ViewBag.giatu_luu = giatu_luu;
                ViewBag.den_luu = den_luu;
                ViewBag.sapxep_luu = sapxep_luu;
            }
            return View(products);
        }
        public ActionResult TimKiem(string key)
        {
            List<Product> sanPhams = db.Products.Where(x => x.ProductName.ToLower().Contains(key.ToLower())).OrderBy(x => x.CreatedDate).ToList();

            return View(sanPhams);
        }
    }
}
