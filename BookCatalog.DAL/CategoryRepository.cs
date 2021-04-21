using BookCatalog.Contracts.Entities;
using BookCatalog.Contracts.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.DAL
{
    public class CategoryRepository : ICategoryRepository
    {
        private readonly IBookContext _bookContext;

        public CategoryRepository(IBookContext bookContext)
        {
            _bookContext = bookContext;
        }

        public IQueryable<Category> GetCategories()
        {
            return _bookContext.Categories;
        }
    }
}
