using BookCatalog.Contracts.BindingModels;
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
    public interface ICategoryService
    {
        Task<Category> GetCategoryById(int id);
        Task<int> SaveCategory(CategoryEditBindingModel category);
        Task<List<Category>> GetFilteredCategories(GridFilter filter);
        Task<int> CountAllCategories();
        Task<int> DeleteCategory(Category category);
    }
}
