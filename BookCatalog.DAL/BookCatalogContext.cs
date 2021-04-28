


using BookCatalog.Contracts.Entities;
using BookCatalog.Contracts.Interfaces;
using Microsoft.EntityFrameworkCore;
using System.Linq;
namespace BookCatalog.DAL
{
    public class BookCatalogContext : DbContext, IBookCatalogContext
    {
        public BookCatalogContext(DbContextOptions<BookCatalogContext> options) : base(options)
        {
        }

        public DbSet<Book> Books { get; set; }
        public DbSet<Category> Categories { get; set; }


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Book>().ToTable("Book");
            modelBuilder.Entity<Category>().ToTable("Category");

            var cascadeFKs = modelBuilder.Model.GetEntityTypes()
                .SelectMany(t => t.GetForeignKeys())
                .Where(fk => !fk.IsOwnership && fk.DeleteBehavior == DeleteBehavior.Cascade);

            foreach (var fk in cascadeFKs)
                fk.DeleteBehavior = DeleteBehavior.Restrict;
        }
    }
}
