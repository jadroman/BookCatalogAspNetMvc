using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace DataMigration.Models
{
    public partial class BookCatalogBckp : DbContext
    {
        public BookCatalogBckp()
        {
        }

        public BookCatalogBckp(DbContextOptions<BookCatalogBckp> options)
            : base(options)
        {
        }

        public virtual DbSet<Kategorije> Kategorijes { get; set; }
        public virtual DbSet<Knjige> Knjiges { get; set; }
        public virtual DbSet<WishList> WishLists { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=(localdb)\\MSSQLLocalDB;Database=BookCatalogBckp;Trusted_Connection=True;MultipleActiveResultSets=true");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

            modelBuilder.Entity<Kategorije>(entity =>
            {
                entity.ToTable("Kategorije");

                entity.Property(e => e.Naziv).HasMaxLength(50);
            });

            modelBuilder.Entity<Knjige>(entity =>
            {
                entity.ToTable("Knjige");

                entity.Property(e => e.Autor).HasMaxLength(50);

                entity.Property(e => e.Godina).HasMaxLength(5);

                entity.Property(e => e.Izdavac).HasMaxLength(50);

                entity.Property(e => e.NakladnickaCjelina).HasMaxLength(50);

                entity.Property(e => e.Napomena).HasColumnType("ntext");

                entity.Property(e => e.Naslov).HasMaxLength(200);

                entity.HasOne(d => d.KategorijaNavigation)
                    .WithMany(p => p.Knjiges)
                    .HasForeignKey(d => d.Kategorija)
                    .HasConstraintName("FK_Knjige_Kategorije");
            });

            modelBuilder.Entity<WishList>(entity =>
            {
                entity.ToTable("WishList");

                entity.Property(e => e.Autor).HasMaxLength(50);

                entity.Property(e => e.Napomena).HasColumnType("ntext");

                entity.Property(e => e.Naslov).HasMaxLength(200);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
