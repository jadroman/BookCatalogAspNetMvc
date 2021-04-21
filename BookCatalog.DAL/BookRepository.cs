using BookCatalog.Contracts.Entities;
using BookCatalog.Contracts.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.DAL
{
    public class BookRepository : IBookRepository
    {

        public BookRepository()
        {

        }

        public IQueryable<Book> Books => throw new NotImplementedException();
    }
}
