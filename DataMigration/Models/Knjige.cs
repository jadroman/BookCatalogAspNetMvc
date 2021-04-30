using System;
using System.Collections.Generic;

#nullable disable

namespace DataMigration.Models
{
    public partial class Knjige
    {
        public int Id { get; set; }
        public string Autor { get; set; }
        public string Naslov { get; set; }
        public string Godina { get; set; }
        public string Izdavac { get; set; }
        public int? Kategorija { get; set; }
        public bool? Procitano { get; set; }
        public string Napomena { get; set; }
        public string NakladnickaCjelina { get; set; }

        public virtual Kategorije KategorijaNavigation { get; set; }
    }
}
