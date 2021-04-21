
using BookCatalog.Contracts.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.Contracts.Interfaces
{
    public interface IBookRepository
    {
        IQueryable<Book> Books { get; }
    }
}
