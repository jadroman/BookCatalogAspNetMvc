using BookCatalog.Contracts.Entities;
using BookCatalog.Contracts.Helpers;
using BookCatalog.Contracts.Interfaces;
using BookCatalog.Domain.Services;
using Microsoft.EntityFrameworkCore;
using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace BookCatalog.Tests.Domain.Services
{
    public class CategoryServiceTest
    {
        private readonly Mock<IBookCatalogContext> _dbContext;

        private readonly ICategoryService _sut;

        public CategoryServiceTest()
        {
            _dbContext = new Mock<IBookCatalogContext>();
            _sut = new CategoryService(_dbContext.Object);

            _dbContext.Setup(repo => repo.Categories)
                .Returns(GetQueryableMockDbSet(new List<Category> { new Category { Id = 1, Name = "Categ" } }));
        }

        [Fact]
        public async Task DeleteCategory_ReturnsError_IfRelatedWithBook()
        {
            // Arrange
            var category = new Category
            {
                Id = 1,
                Name = "Categ",
                Books = new List<Book> { new Book { Id = 1, Title = "Book" } }
            };

            // Act
            var result = await _sut.DeleteCategory(category);

            // Assert
            Assert.IsType<InvalidResult<int>>(result);
        }

        private DbSet<T> GetQueryableMockDbSet<T>(List<T> sourceList) where T : class
        {
            var queryable = sourceList.AsQueryable();

            var dbSet = new Mock<DbSet<T>>();
            dbSet.As<IQueryable<T>>().Setup(m => m.Provider).Returns(queryable.Provider);
            dbSet.As<IQueryable<T>>().Setup(m => m.Expression).Returns(queryable.Expression);
            dbSet.As<IQueryable<T>>().Setup(m => m.ElementType).Returns(queryable.ElementType);
            dbSet.As<IQueryable<T>>().Setup(m => m.GetEnumerator()).Returns(() => queryable.GetEnumerator());
            dbSet.Setup(d => d.Add(It.IsAny<T>())).Callback<T>((s) => sourceList.Add(s));

            return dbSet.Object;
        }
    }
}
