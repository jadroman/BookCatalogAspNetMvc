using BookCatalog.Contracts.BindingModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookCatalog.Web.Models.ViewModels
{
    public class CategoryEditViewModel
    {
        public CategoryEditBindingModel Category { get; set; }
    }
}
