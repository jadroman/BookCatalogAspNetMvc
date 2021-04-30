using System;
using System.Collections.Generic;

#nullable disable

namespace DataMigration.Models
{
    public partial class Kategorije
    {
        public Kategorije()
        {
            Knjiges = new HashSet<Knjige>();
        }

        public int Id { get; set; }
        public string Naziv { get; set; }

        public virtual ICollection<Knjige> Knjiges { get; set; }
    }
}
