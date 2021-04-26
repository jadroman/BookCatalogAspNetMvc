using BookCatalog.Contracts.BindingModels;
using BookCatalog.Contracts.Entities;
using BookCatalog.Contracts.Interfaces;
using BookCatalog.Web.Models;
using BookCatalog.Web.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Linq.Dynamic.Core;

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

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit([Bind(include:"Category")]
            CategoryEditViewModel categoryBind)
        {
            if (ModelState.IsValid)
            {
                var categToUpdate = await _categoryService.GetCategoryById(categoryBind.Category.Id);

                if (categToUpdate == null)
                {
                    return NotFound();
                }

                if (await _categoryService.SaveCategory(categoryBind.Category) < 1)
                {
                    ModelState.AddModelError("", "Unable to save changes. " +
                        "Try again, and if the problem persists, " +
                        "see your system administrator.");
                }

            }
            return RedirectToAction(nameof(Index));
        }

        public IActionResult Create()
        {
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind(include:"Category")]
            CategoryEditViewModel categoryBind)
        {
            if (ModelState.IsValid)
            {
                if (await _categoryService.SaveCategory(categoryBind.Category) < 1)
                {
                    ModelState.AddModelError("", "Unable to save changes. " +
                        "Try again, and if the problem persists, " +
                        "see your system administrator.");
                }

            }
            return RedirectToAction(nameof(Index));
        }



        [HttpPost]
        public IActionResult GetCategories()
        {
            try
            {
                var draw = Request.Form["draw"].FirstOrDefault();
                var start = Request.Form["start"].FirstOrDefault();
                var length = Request.Form["length"].FirstOrDefault();
                var sortColumn = Request.Form["columns[" + Request.Form["order[0][column]"].FirstOrDefault() + "][name]"].FirstOrDefault();
                var sortColumnDirection = Request.Form["order[0][dir]"].FirstOrDefault();
                var searchValue = Request.Form["search[value]"].FirstOrDefault();
                int pageSize = length != null ? Convert.ToInt32(length) : 0;
                int skip = start != null ? Convert.ToInt32(start) : 0;
                int recordsTotal = 0;
                var categoryData = (from tempcustomer in _categoryService.GetAllCategories2() select tempcustomer);
                if (!(string.IsNullOrEmpty(sortColumn) && string.IsNullOrEmpty(sortColumnDirection)))
                {
                    categoryData = categoryData.OrderBy(sortColumn + " " + sortColumnDirection);
                }
                if (!string.IsNullOrEmpty(searchValue))
                {
                    categoryData = categoryData.Where(m => m.Name.Contains(searchValue));
                }
                var data = categoryData.Skip(skip).Take(pageSize).ToList();
                recordsTotal = data.Count();
                var jsonData = new { draw = draw, recordsFiltered = recordsTotal, recordsTotal = recordsTotal, data = data };
                return Ok(jsonData);

            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
