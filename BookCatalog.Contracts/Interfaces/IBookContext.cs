using BookCatalog.Contracts.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.Contracts.Interfaces
{
    public interface IBookContext
    {
        DbSet<Book> Books { get; }
        DbSet<Category> Categories { get; }
    }
}
