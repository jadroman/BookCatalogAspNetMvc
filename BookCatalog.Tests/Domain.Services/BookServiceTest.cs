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
    public class BookServiceTest
    {
        private readonly Mock<IBookCatalogContext> _dbContext;

        private readonly IBookService _sut;

        public BookServiceTest()
        {
            _dbContext = new Mock<IBookCatalogContext>();
            _sut = new BookService(_dbContext.Object);

            var books = new List<Book>
                {
                    new Book
                    {
                        Id = 1, Title = "Title1",
                        Author = "Author1"
                    },
                    new Book
                    {
                        Id = 2, Title = "Title2",
                        Author = "Author2"
                    },
                    new Book
                    {
                        Id = 3, Title = "Title3",
                        Author = "Author3"
                    },
                    new Book
                    {
                        Id = 4, Title = "Title4",
                        Author = "Author4"
                    },
                    new Book
                    {
                        Id = 5, Title = "Title5",
                        Author = "Author5"
                    }
                };

            var bookMock = books.AsQueryable().BuildMockDbSet();

            _dbContext.Setup(repo => repo.Books)
                .Returns(bookMock.Object);
        }

        [Theory]
        [InlineData("Title1")]
        [InlineData("Author1")]
        public async Task GetBooks_ReturnsSearchedBooksOnly_WhenSearchingByParameters(string searchValue)
        {
            // Arrange
            var _bookParams = new GridFilter
            {
                  SearchValue = searchValue
            };

            // Act
            var result = await _sut.GetFilteredBooks(_bookParams);

            // Assert
            Assert.True(result.Count == 1);
        }

    }
}
