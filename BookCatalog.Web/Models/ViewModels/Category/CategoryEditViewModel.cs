﻿using BookCatalog.Common.BindingModels;
using BookCatalog.Common.BindingModels.Category;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookCatalog.Web.Models.ViewModels.Category
{
    public class CategoryEditViewModel
    {
        public CategoryEditBindingModel Category { get; set; }
    }
}
