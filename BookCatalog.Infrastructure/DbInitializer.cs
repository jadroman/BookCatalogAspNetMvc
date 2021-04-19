using BookCatalog.DAL.Models;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.DAL
{
    public class DbInitializer
    {
        public static void Initialize(IApplicationBuilder app)
        {
            BookContext context = app.ApplicationServices
                .CreateScope().ServiceProvider.GetRequiredService<BookContext>();

            context.Database.EnsureCreated();

            if (!context.Categories.Any())
            {
                var categories = new Category[]
                {
                    new Category{ Name = "category1"},
                    new Category{ Name = "category2"},
                    new Category{ Name = "category3"},
                };

                foreach (Category cat in categories)
                {
                    context.Categories.Add(cat);
                }
                context.SaveChanges();
            }

            if (!context.Books.Any())
            {
                var categ1 = context.Categories.Where(c => c.Name == "category1").FirstOrDefault();
                var categ2 = context.Categories.Where(c => c.Name == "category2").FirstOrDefault();
                var categ3 = context.Categories.Where(c => c.Name == "category3").FirstOrDefault();

                var books = new Book[]
                {
                    new Book{ Title = "title1", Author = "autor1", Category = categ1 },
                    new Book{ Title = "title2", Author = "autor2", Category = categ2 },
                    new Book{ Title = "title3", Author = "autor3", Category = categ3 },
                };

                foreach (Book book in books)
                {
                    context.Books.Add(book);
                }
                context.SaveChanges();
            }



        }

    }
}
