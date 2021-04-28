﻿
using BookCatalog.Contracts.BindingModels;
using BookCatalog.Contracts.Entities;
using BookCatalog.Contracts.Helpers;
using BookCatalog.Contracts.Interfaces;
using BookCatalog.DAL;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
//using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq.Dynamic.Core;
using System.Linq;
using BookCatalog.Contracts.BindingModels.Category;
using BookCatalog.Contracts.BindingModels.Book;

namespace BookCatalog.Domain.Services
{
    public class BookService : IBookService
    {
        private readonly IBookCatalogContext _context;

        public BookService(IBookCatalogContext context)
        {
            _context = context;
        }

        public Task<int> CountAllBooks()
        {
            return  _context.Books.AsNoTracking().CountAsync();
        }

        public async Task<List<Book>> GetFilteredBooks(GridFilter filter)
        {
            var bookData = (IQueryable<Book>) _context.Books.AsNoTracking();

            if (!(string.IsNullOrEmpty(filter.SortColumn) && string.IsNullOrEmpty(filter.SortColumnDirection)))
            {
                bookData = bookData.OrderBy(filter.SortColumn + " " + filter.SortColumnDirection);
            }
            if (!string.IsNullOrEmpty(filter.SearchValue))
            {
                bookData = bookData.Where(m => m.Title.Contains(filter.SearchValue) || 
                m.Author.Contains(filter.SearchValue));
            }

            return await bookData.Skip(filter.Skip).Take(filter.PageSize).ToListAsync();
        }

        public async Task<Book> GetBookById(int id)
        {
            var book = await _context.Books
                 .AsNoTracking()
                 .FirstOrDefaultAsync(c => c.Id == id);

            return book;
        }

        public async Task<int> SaveBook(BookEditBindingModel bookBinding)
        {
            var book = new Book
            {
                Id = bookBinding.Id,
                Author = bookBinding.Author,
                Title = bookBinding.Title,
                Category = await _context.Categories.AsNoTracking().FirstOrDefaultAsync(c=>c.Id == bookBinding.Category.Id),
                Collection = bookBinding.Collection,
                Note = bookBinding.Note,
                Publisher = bookBinding.Publisher,
                Read = bookBinding.Read,
                Year = bookBinding.Year
            };

            if (book.Id == 0)
            {
                await _context.Books.AddAsync(book);
            }
            else
            {
                _context.Update(book);
            }

            return await _context.SaveChangesAsync();
        }


        public async Task<int> DeleteBook(Book book)
        {
            try
            {
                _context.Books.Remove(book);

                return await _context.SaveChangesAsync();
            }
            catch (Exception)
            {
                return await Task.FromResult(0);
            }
        }
    }
}