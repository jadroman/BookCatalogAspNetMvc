using BookCatalog.Contracts.BindingModels;
using BookCatalog.Contracts.BindingModels.Book;
using BookCatalog.Contracts.BindingModels.Category;
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
