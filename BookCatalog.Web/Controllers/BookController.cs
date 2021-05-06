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
using BookCatalog.Contracts.Helpers;
using BookCatalog.Contracts.BindingModels.Category;
using BookCatalog.Contracts.BindingModels.Book;
using BookCatalog.Web.Models.ViewModels.Book;
using Microsoft.AspNetCore.Mvc.Rendering;
using NToastNotify;
using Microsoft.AspNetCore.Diagnostics;
using Microsoft.AspNetCore.Authorization;
using BookCatalog.Domain.Services;

namespace BookCatalog.Web.Controllers
{
    [Authorize]
    public class BookController : Controller
    {
        private readonly ILogger<BookController> _logger;
        private readonly IBookService _bookService;


        public BookController(ILogger<BookController> logger, IBookService bookService)
        {
            _logger = logger;
            _bookService = bookService;
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

            var bookDetailsBindModel = new BookDetailsBindingModel
            {
                Id = bookEntity.Id,
                Title = bookEntity.Title,
                Author = bookEntity.Author,
                Collection = bookEntity.Collection,
                Note = bookEntity.Note,
                Publisher = bookEntity.Publisher,
                Read = bookEntity.Read,
                Year = bookEntity.Year,
                Category = new CategoryDetailsBindingModel { Id = bookEntity.Category?.Id, Name = bookEntity.Category?.Name }
            };

            var model = new BookDetailsViewModel
            {
                Book = bookDetailsBindModel
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

            var bookEditBindModel = new BookEditBindingModel
            {
                Id = bookEntity.Id,
                Title = bookEntity.Title,
                Author = bookEntity.Author,
                Collection = bookEntity.Collection,
                Note = bookEntity.Note,
                Publisher = bookEntity.Publisher,
                Read = bookEntity.Read,
                Year = bookEntity.Year,
                Category = new CategoryDetailsBindingModel { Id = bookEntity.Category?.Id, Name = bookEntity.Category?.Name },
            };

            var model = new BookEditViewModel
            {
                Book = bookEditBindModel
            };

            ViewData["AllCategories"] = new SelectList(await _bookService.GetAllCategories(), "Id", "Name", bookEntity.Category?.Id);

            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit([Bind(include:"Book")]
            BookEditViewModel bookBind)
        {
            if (ModelState.IsValid)
            {
                var bookToUpdate = await _bookService.GetBookById(bookBind.Book.Id);

                if (bookToUpdate == null)
                {
                    return NotFound();
                }

                if (await _bookService.SaveBook(bookBind.Book) < 1)
                {
                    ModelState.AddModelError("", "Unable to save changes. " +
                        "Try again, and if the problem persists, " +
                        "see your system administrator.");
                    return View(bookBind);
                }

            }
            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> Create()
        {
            ViewData["AllCategories"] = new SelectList(await _bookService.GetAllCategories(), "Id", "Name");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind(include:"Book")]
            BookEditViewModel bookBind)
        {
            if (ModelState.IsValid)
            {
                await _bookService.SaveBook(bookBind.Book);
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

            var bookDetailsBindModel = new BookDetailsBindingModel
            {
                Id = bookEntity.Id,
                Title = bookEntity.Title,
                Author = bookEntity.Author,
                Collection = bookEntity.Collection,
                Note = bookEntity.Note,
                Publisher = bookEntity.Publisher,
                Read = bookEntity.Read,
                Year = bookEntity.Year,
                Category = new CategoryDetailsBindingModel { Id = bookEntity.Category?.Id, Name = bookEntity.Category?.Name }
            };

            var model = new BookDetailsViewModel
            {
                Book = bookDetailsBindModel
            };

            return View(model);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var book = await _bookService.GetBookById(id);
            if (book == null)
            {
                return RedirectToAction(nameof(Index));
            }

            if (await _bookService.DeleteBook(book) < 1)
            {
                ModelState.AddModelError("", "Unable to delete the book.");

                var bookDetailsBindModel = new BookDetailsBindingModel
                {
                    Id = book.Id,
                    Title = book.Title,
                    Author = book.Author,
                    Collection = book.Collection,
                    Note = book.Note,
                    Publisher = book.Publisher,
                    Read = book.Read,
                    Year = book.Year,
                    Category = new CategoryDetailsBindingModel { Id = book.Category.Id, Name = book.Category.Name }
                };

                return View(new BookDetailsViewModel
                {
                    Book = bookDetailsBindModel
                });
            }

            return RedirectToAction(nameof(Index));
        }
    }
}
