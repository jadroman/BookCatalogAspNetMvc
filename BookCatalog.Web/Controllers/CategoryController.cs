using BookCatalog.Contracts.BindingModels;
using BookCatalog.Contracts.Interfaces;
using BookCatalog.Web.Models;
using BookCatalog.Web.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace BookCatalog.Web.Controllers
{
    public class CategoryController : Controller
    {
        private readonly ILogger<CategoryController> _logger;
        private readonly ICategoryService _categoryService;

        public CategoryController(ILogger<CategoryController> logger, ICategoryService categoryService)
        {
            _logger = logger;
            _categoryService = categoryService;
        }

        public async Task<IActionResult> Index()
        {
            var model = new CategoryLisViewModel();
            var categBindings = new List<CategoryBindingModel>();
            var categEntities = await _categoryService.GetCategoriesAsync();

            foreach (var item in categEntities)
            {
                var cat = new CategoryBindingModel
                {
                    Id = item.Id,
                    Name = item.Name
                };
                categBindings.Add(cat);
            }

            model.Categories = categBindings;

            return View(model);
        }

    }
}
