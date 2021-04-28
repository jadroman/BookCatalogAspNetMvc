using BookCatalog.Contracts.BindingModels;
using BookCatalog.Contracts.BindingModels.Category;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookCatalog.Web.Models.ViewModels.Category
{
    public class CategoryDetailsViewModel
    {
        public CategoryDetailsBindingModel Category { get; set; }
    }
}
