using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClinicManagement1.Models
{
    public class CartItem
    {
        ClinicManagementEntities2 db = new ClinicManagementEntities2();
        public int _IdProduct { get; set; }
        public string _ProductName { get; set; }
        public string _Image { get; set; }
        // public string _MauSac { get; set; }
        public decimal? _Price { get; set; }
        public int _Amount { get; set; }
        public decimal _Total
        {
            get { return _Amount * _Price.GetValueOrDefault(0); }
        }
        public CartItem(int __idproduct)
        {
            _IdProduct = __idproduct;
            Product sp = db.Products.Single(n => n.Id == __idproduct);
            _ProductName = sp.ProductName;
            Image img = new Image();
            img = db.Images.Where(x => x.ProductId == __idproduct).FirstOrDefault();
            _Image = img.Path;
            _Price = sp.Price_out;
            _Amount = 1;
        }
    }
}