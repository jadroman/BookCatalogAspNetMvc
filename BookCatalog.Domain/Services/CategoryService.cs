
using BookCatalog.Contracts.Entities;
using BookCatalog.Contracts.Interfaces;
using BookCatalog.DAL;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.Domain.Services
{
    public class CategoryService : ICategoryService
    {
        //private readonly ICategoryRepository _categoryRepository;
        private readonly IBookContext _bookContext;

        public CategoryService(IBookContext bookContext)
        {
            _bookContext = bookContext;
        }

        public async Task<List<Category>> GetCategoriesAsync()
        {
            return await _bookContext.Categories.ToListAsync();
        }


        public List<Category> GetCategories()
        {
            return _bookContext.Categories.Include(c => c.Books).ToList();
        }
    }
}
