using BookCatalog.Common.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Linq;
using System.Threading.Tasks;
using System.Linq.Dynamic.Core;
using BookCatalog.Common.Helpers;
using BookCatalog.Common.BindingModels.Book;
using BookCatalog.Web.Models.ViewModels.Book;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Authorization;
using BookCatalog.Common.Entities;
using AutoMapper;

namespace BookCatalog.Web.Controllers
{
    [Authorize]
    public class BookController : Controller
    {
        private readonly ILogger<BookController> _logger;
        private readonly IBookService _bookService;
        private readonly IMapper _mapper;

        public BookController(ILogger<BookController> logger, IBookService bookService, IMapper mapper)
        {
            _logger = logger;
            _bookService = bookService;
            _mapper = mapper;
        }

        public IActionResult Index()
        {
            return View();
        }

        public async Task<IActionResult> Details(int id)
        {
            var bookEntity = await _bookService.GetBookById(id);

            if (bookEntity == null)
            {
                return NotFound();
            }

            var model = new BookDetailsViewModel
            {
                Book = _mapper.Map<BookDetailsBindingModel>(bookEntity)
            };

            return View(model);
        }

        public async Task<IActionResult> Edit(int id)
        {
            var bookEntity = await _bookService.GetBookById(id);

            if (bookEntity == null)
            {
                return NotFound();
            }

            var model = new BookEditViewModel
            {
                Book = _mapper.Map<BookEditBindingModel>(bookEntity)
            };

            ViewBag.AllCategories = new SelectList(await _bookService.GetAllCategories(), "Id", "Name", bookEntity.CategoryId);

            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit([Bind(include:"Book")]
            BookEditViewModel bookBind)
        {
            if (ModelState.IsValid)
            {
                var bookEntity = await _bookService.GetBookById(bookBind.Book.Id, true);

                if (bookEntity == null)
                {
                    return NotFound();
                }

                _mapper.Map(bookBind.Book, bookEntity);

                await _bookService.SaveBook(bookEntity);
            }
            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> Create()
        {
            ViewBag.AllCategories = new SelectList(await _bookService.GetAllCategories(), "Id", "Name");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind(include:"Book")]
            BookEditViewModel bookBind)
        {
            if (ModelState.IsValid)
            {
                var bookEntity = _mapper.Map<Book>(bookBind.Book);

                if (await _bookService.SaveBook(bookEntity) < 1)
                {
                    ModelState.AddModelError("", "Unable to save changes. " +
                        "Try again, and if the problem persists, " +
                        "see your system administrator.");

                    _logger.LogError($"Unable to Create the book:  {StringHelper.PrintObjectProps(bookBind.Book)}");

                    return View(bookBind);
                }
            }
            return RedirectToAction(nameof(Index)); 
        }

        [HttpPost]
        public async Task<IActionResult> GetBooks()
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

            int recordsTotal = await _bookService.CountAllBooks();
            var data = await _bookService.GetFilteredBooks(filter);
            var jsonData = new { draw, recordsFiltered = recordsTotal, recordsTotal, data };
            return Ok(jsonData);

        }

        public async Task<IActionResult> Delete(int id)
        {
            var bookEntity = await _bookService.GetBookById(id);

            if (bookEntity == null)
            {
                return NotFound();
            }

            var model = new BookDetailsViewModel
            {
                Book = _mapper.Map<BookDetailsBindingModel>(bookEntity)
            };

            return View(model);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var bookEntity = await _bookService.GetBookById(id);

            if (bookEntity == null)
            {
                return RedirectToAction(nameof(Index));
            }

            if (await _bookService.DeleteBook(bookEntity) < 1)
            {
                ModelState.AddModelError("", "Unable to delete the book. " +
                          "Try again, and if the problem persists, " +
                          "see your system administrator.");

                _logger.LogError($"Unable to delete the book:  {StringHelper.PrintObjectProps(bookEntity)}");

                return View(new BookDetailsViewModel
                {
                    Book = _mapper.Map<BookDetailsBindingModel>(bookEntity)
                });
            }

            return RedirectToAction(nameof(Index));
        }
    }
}
