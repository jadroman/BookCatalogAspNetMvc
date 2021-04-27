
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

        public Task<List<Category>> GetAllCategories()
        {
            return _bookContext.Categories.ToListAsync();
        }

        public Task<int> CountAllCategories()
        {
            return  _bookContext.Categories.CountAsync();
        }

        public DbSet<Category> GetAllCategories2()
        {
            return _bookContext.Categories;
        }

        public async Task<List<Category>> GetFilteredCategories(GridFilter filter)
        {
            var categoryData = (IQueryable<Category>) _bookContext.Categories;

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


        public async Task<int> DeleteCategory(Category category)
        {
            try
            {


                _bookContext.Categories.Remove(category);

                return await _bookContext.SaveChangesAsync();
            }
            catch (Exception)
            {
                return await Task.FromResult(0);
            }
        }
    }
}
