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
            var model = new CategoryListViewModel();
            var catListBindModel = new List<CategoryListBindingModel>();
            var catEntities = await _categoryService.GetAllCategories();

            foreach (var item in catEntities)
            {
                var cat = new CategoryListBindingModel
                {
                    Id = item.Id,
                    Name = item.Name
                };
                catListBindModel.Add(cat);
            }

            model.Categories = catListBindModel;

            return View(model);
        }

        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var catEntity = await _categoryService.GetCategoryById(id.Value);

            if (catEntity == null)
            {
                return NotFound();
            }

            var catDetailsBindModel = new CategoryDetailsBindingModel
            {
                Id = catEntity.Id,
                Name = catEntity.Name
            };

            var model = new CategoryDetailsViewModel
            {
                Category = catDetailsBindModel
            };

            return View(model);
        }
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var catEntity = await _categoryService.GetCategoryById(id.Value);

            if (catEntity == null)
            {
                return NotFound();
            }

            var catEditBindModel = new CategoryEditBindingModel
            {
                Id = catEntity.Id,
                Name = catEntity.Name
            };

            var model = new CategoryEditViewModel
            {
                Category = catEditBindModel
            };

            return View(model);
        }
    }
}
