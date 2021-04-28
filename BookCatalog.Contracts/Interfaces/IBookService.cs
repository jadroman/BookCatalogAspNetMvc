using BookCatalog.Contracts.BindingModels;
using BookCatalog.Contracts.BindingModels.Book;
using BookCatalog.Contracts.BindingModels.Category;
using BookCatalog.Contracts.Entities;
using BookCatalog.Contracts.Helpers;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.Contracts.Interfaces
{
    public interface IBookService
    {
        Task<Book> GetBookById(int id);
        Task<int> SaveBook(BookEditBindingModel book);
        Task<List<Book>> GetFilteredBooks(GridFilter filter);
        Task<int> CountAllBooks();
        Task<int> DeleteBook(Book book);
    }
}
