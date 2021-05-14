using BookCatalog.Common.BindingModels;
using BookCatalog.Common.BindingModels.Book;
using BookCatalog.Common.BindingModels.Category;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookCatalog.Web.Models.ViewModels.Book
{
    public class BookEditViewModel
    {
        public BookEditBindingModel Book { get; set; }
    }
}
