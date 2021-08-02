using BookCatalog.Common.Interfaces;
using BookCatalog.Web.Models.ViewModels.Category;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Linq;
using System.Threading.Tasks;
using System.Linq.Dynamic.Core;
using BookCatalog.Common.Helpers;
using BookCatalog.Common.BindingModels.Category;
using Microsoft.AspNetCore.Authorization;
using AutoMapper;
using BookCatalog.Common.Entities;

namespace BookCatalog.Web.Controllers
{
    [Authorize]
    public class CategoryController : Controller
    {
        private readonly ILogger<CategoryController> _logger;
        private readonly ICategoryService _categoryService;
        private readonly IMapper _mapper;

        public CategoryController(ILogger<CategoryController> logger, ICategoryService categoryService, IMapper mapper)
        {
            _logger = logger;
            _categoryService = categoryService;
            _mapper = mapper;
        }

        public IActionResult Index()
        {
            return View();
        }

        public async Task<IActionResult> Details(int id)
        {
            var catEntity = await _categoryService.GetCategoryById(id);

            if (catEntity == null)
            {
                return NotFound();
            }

            var model = new CategoryDetailsViewModel
            {
                Category = _mapper.Map<CategoryDetailsBindingModel>(catEntity)
            };

            return View(model);
        }

        public async Task<IActionResult> Edit(int id)
        {
            var catEntity = await _categoryService.GetCategoryById(id);

            if (catEntity == null)
            {
                return NotFound();
            }

            var model = new CategoryEditViewModel
            {
                Category = _mapper.Map<CategoryEditBindingModel>(catEntity)
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
                var categoryEntity = await _categoryService.GetCategoryById(categoryBind.Category.Id, true);

                if (categoryEntity == null)
                {
                    return NotFound();
                }

                _mapper.Map(categoryBind.Category, categoryEntity);

                if (await _categoryService.SaveCategory(categoryEntity) < 1)
                {
                    ModelState.AddModelError("", "Unable to save changes. " +
                        "Try again, and if the problem persists, " +
                        "see your system administrator.");

                    _logger.LogError($"Unable to Update the category:  {StringHelper.PrintObjectProps(categoryBind.Category)}");

                    return View(categoryBind);
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
                var categoryEntity = _mapper.Map<Category>(categoryBind.Category);
                if(await _categoryService.SaveCategory(categoryEntity) < 1)
                {
                    ModelState.AddModelError("", "Unable to save changes. " +
                        "Try again, and if the problem persists, " +
                        "see your system administrator.");

                    _logger.LogError($"Unable to insert the category:  {StringHelper.PrintObjectProps(categoryBind.Category)}");

                    return View(categoryBind);
                }
            }
            return RedirectToAction(nameof(Index));
        }



        [HttpPost]
        public async Task<IActionResult> GetCategories()
        {
            var draw = Request.Form["draw"].FirstOrDefault();
            var start = Request.Form["start"].FirstOrDefault();
            var length = Request.Form["length"].FirstOrDefault();
            var sortColumn = Request.Form["columns[" + Request.Form["order[0][column]"].FirstOrDefault() + "][name]"].FirstOrDefault();
            var sortColumnDirection = Request.Form["order[0][dir]"].FirstOrDefault();
            var searchValue = Request.Form["search[value]"].FirstOrDefault();
            int pageSize = length != null ? Convert.ToInt32(length) : 0;
            int skip = start != null ? Convert.ToInt32(start) : 0;

            var filter = new GridFilter
            {
                PageSize = pageSize,
                SearchValue = searchValue,
                Skip = skip,
                SortColumn = sortColumn,
                SortColumnDirection = sortColumnDirection
            };

            int recordsTotal = await _categoryService.CountAllCategories();
            var data = await _categoryService.GetFilteredCategories(filter);
            var jsonData = new { draw, recordsFiltered = recordsTotal, recordsTotal, data };
            return Ok(jsonData);
        }

        public async Task<IActionResult> Delete(int id)
        {
            var catEntity = await _categoryService.GetCategoryById(id);

            if (catEntity == null)
            {
                return NotFound();
            }

            var model = new CategoryDetailsViewModel
            {
                Category = _mapper.Map<CategoryDetailsBindingModel>(catEntity)
            };

            return View(model);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var catEntity = await _categoryService.GetCategoryByIdWithBooks(id);
            if (catEntity == null)
            {
                return NotFound();
            }

            var deleteCategResult = await _categoryService.DeleteCategory(catEntity);

            if (!deleteCategResult.IsSuccessful)
            {
                _logger.LogError(deleteCategResult.Error + $" Categori id = {id}");
                ModelState.AddModelError("", deleteCategResult.Error);

                return View(new CategoryDetailsViewModel
                {
                    Category = _mapper.Map<CategoryDetailsBindingModel>(catEntity)
                });
            }
            else if (deleteCategResult.Data < 1)
            {
                ModelState.AddModelError("", "Unable to delete the category. " +
                          "Try again, and if the problem persists, " +
                          "see your system administrator.");

                _logger.LogError($"Unable to delete the category:  {StringHelper.PrintObjectProps(catEntity)}");

                return View(new CategoryDetailsViewModel
                {
                    Category = _mapper.Map<CategoryDetailsBindingModel>(catEntity)
                });
            }

            return RedirectToAction(nameof(Index));
        }
    }
}
