﻿using BookCatalog.Common.BindingModels;
using BookCatalog.Common.BindingModels.Book;
using BookCatalog.Common.BindingModels.Category;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using X.PagedList;

namespace BookCatalog.Web.Models.ViewModels.Book
{
    public class BookListViewModel
    {
        public IPagedList<BookCatalog.Common.Entities.Book> Books { get; set; }
    }
}
