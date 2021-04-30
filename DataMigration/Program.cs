using DataMigration.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace DataMigration
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
            Console.WriteLine("Hello World!");
            Console.ReadKey();

            var ctxOld = new BookCatalogBckp();
            List<Knjige> listaKnjiga = ctxOld.Knjiges.ToList();

            int num = 1;

            foreach (var knjiga in listaKnjiga)
            {
                Console.WriteLine(num + ". " + knjiga.Naslov);
                num++;
            }
            Console.ReadKey();



            var ctxNew = new BookCatalog();
            List<Book> listaKnjiga = ctxNew.Books.ToList();

            int num = 1;

            foreach (var knjiga in listaKnjiga)
            {
                Console.WriteLine(num + ". " + knjiga.Title);
                num++;
            }
            Console.ReadKey();
            


            var ctxNew = new BookCatalog();
            var ctxOld = new BookCatalogBckp();
            List<Knjige> listaKnjigaOld = ctxOld.Knjiges.Include(c=>c.KategorijaNavigation).ToList();
            List<Category> listaKatNew = ctxNew.Categories.ToList();


            foreach (var knj in listaKnjigaOld)
            {
                ctxNew.Books.Add(new Book
                {
                    Id = knj.Id,
                    Author = knj.Autor,
                    Category = listaKatNew.Where(k => k.Id == knj.Kategorija.Value).FirstOrDefault(),
                    Note = knj.Napomena,
                    Collection = knj.NakladnickaCjelina,
                    Publisher = knj.Izdavac,
                    Read = knj.Procitano,
                    Title = knj.Naslov,
                    Year = int.Parse(knj.Godina)
                }) ; 
            }
            ctxNew.SaveChanges();
            Console.WriteLine("Finish");
            Console.ReadKey();
            */
        }
    }
}
