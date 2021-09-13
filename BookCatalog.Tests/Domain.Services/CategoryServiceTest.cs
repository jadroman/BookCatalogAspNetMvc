using BookCatalog.Common.Entities;
using BookCatalog.Common.Helpers;
using BookCatalog.Common.Interfaces;
using BookCatalog.Domain.Services;
using MockQueryable.Moq;
using Moq;
using System.Collections.Generic;
using System.Linq;
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

            var cats = new List<Category> { new Category { Id = 1, Name = "Categ" } };
            var catsMock = cats.AsQueryable().BuildMockDbSet();

            _dbContext.Setup(repo => repo.Categories)
                .Returns(catsMock.Object);
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

    }
}
