
using BookCatalog.Contracts.BindingModels;
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

        public async Task<List<Category>> GetAllCategories()
        {
            return await _bookContext.Categories.ToListAsync();
        }

        public async Task<Category> GetCategoryById(int id)
        {
            var category = await _bookContext.Categories
                 .AsNoTracking()
                 .FirstOrDefaultAsync(c => c.Id == id);

            return category;
        }

        public async Task<int> SaveCategory(CategoryEditBindingModel categoryBinding)
        {
            var category = new Category
            {
                Id = categoryBinding.Id,
                Name = categoryBinding.Name
            };

            if (category.Id == 0)
            {
                await _bookContext.Categories.AddAsync(category);
            }
            else
            {
                _bookContext.Update(category);
            }

            return await _bookContext.SaveChangesAsync();
        }
    }
}
