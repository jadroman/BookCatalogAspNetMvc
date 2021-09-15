using BookCatalog.Common.Interfaces;
using BookCatalog.DAL;
using BookCatalog.Domain.Services;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace BookCatalog.Web.Extensions
{
    public static class ServiceExtensions
    {
        public static void ConfigureDbContext(this IServiceCollection services, IConfiguration config)
        {
            services.AddDbContext<BookCatalogContext>(options =>
                options.UseSqlServer(config.GetConnectionString("BookCatalog")).EnableSensitiveDataLogging());
        }

        public static void ConfigureServices(this IServiceCollection services)
        {
            services.AddScoped<ICategoryService, CategoryService>();
            services.AddScoped<IBookService, BookService>();
            services.AddScoped<IBookCatalogContext, BookCatalogContext>();
            services.AddScoped<IEmailSender, EmailService>();
        }
    }
}
