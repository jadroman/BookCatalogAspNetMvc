
using BookCatalog.Common.BindingModels;
using BookCatalog.Common.Entities;
using BookCatalog.Common.Helpers;
using BookCatalog.Common.Interfaces;
using BookCatalog.DAL;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Linq.Dynamic.Core;
using System.Linq;
using BookCatalog.Common.BindingModels.Category;

namespace BookCatalog.Domain.Services
{
    public class CategoryService : ICategoryService
    {
        private readonly IBookCatalogContext _context;

        public CategoryService(IBookCatalogContext context)
        {
            _context = context;
        }

        public Task<int> CountAllCategories()
        {
            return  _context.Categories.AsNoTracking().CountAsync();
        }

        public async Task<List<Category>> GetFilteredCategories(GridFilter filter)
        {
            var categoryData = (IQueryable<Category>) _context.Categories.AsNoTracking();

            if (!(string.IsNullOrEmpty(filter.SortColumn) && string.IsNullOrEmpty(filter.SortColumnDirection)))
            {
                categoryData = categoryData.OrderBy(filter.SortColumn + " " + filter.SortColumnDirection);
            }
            if (!string.IsNullOrEmpty(filter.SearchValue))
            {
                categoryData = categoryData.Where(m => m.Name.Contains(filter.SearchValue));
            }

            return await categoryData.Skip(filter.Skip).Take(filter.PageSize).ToListAsync();
        }

        public async Task<Category> GetCategoryById(int id)
        {
            var category = await _context.Categories
                 .AsNoTracking()
                 .FirstOrDefaultAsync(c => c.Id == id);

            return category;
        }

        public async Task<Category> GetCategoryByIdWithBooks(int id)
        {
            var category = await _context.Categories.Include(c=>c.Books)
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
                await _context.Categories.AddAsync(category);
            }
            else
            {
                _context.Update(category);
            }

            return await _context.SaveChangesAsync();
        }


        public async Task<Result<int>> DeleteCategory(Category category)
        {
            if (category.Books != null && category.Books.Any())
            {
                return new InvalidResult<int>("There are some books related with this category.");
            }

            _context.Categories.Remove(category);

            return new SuccessResult<int>(await _context.SaveChangesAsync());
        }
    }
}
