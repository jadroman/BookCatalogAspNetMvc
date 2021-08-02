using AutoMapper;
using BookCatalog.Common.BindingModels.Book;
using BookCatalog.Common.BindingModels.Category;
using BookCatalog.Common.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookCatalog.Web
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<Book, BookDetailsBindingModel>();
            CreateMap<BookEditBindingModel, Book>();
            CreateMap<Book, BookEditBindingModel>();

            CreateMap<Category, CategoryDetailsBindingModel>();
            CreateMap<CategoryEditBindingModel, Category>();
            CreateMap<Category, CategoryEditBindingModel>();
        }
    }
}
