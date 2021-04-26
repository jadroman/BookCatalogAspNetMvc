using BookCatalog.Contracts.BindingModels;
using BookCatalog.Contracts.Entities;
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
        Task<List<Category>> GetAllCategories();
        Task<Category> GetCategoryById(int id);
        Task<int> SaveCategory(CategoryEditBindingModel category);
        DbSet<Category> GetAllCategories2();
    }
}
