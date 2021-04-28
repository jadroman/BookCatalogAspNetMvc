
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


        public async Task<int> DeleteCategory(Category category)
        {
            try
            {


                _context.Categories.Remove(category);

                return await _context.SaveChangesAsync();
            }
            catch (Exception)
            {
                return await Task.FromResult(0);
            }
        }
    }
}
