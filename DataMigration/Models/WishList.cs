using System;
using System.Collections.Generic;

#nullable disable

namespace DataMigration.Models
{
    public partial class WishList
    {
        public int Id { get; set; }
        public string Autor { get; set; }
        public string Naslov { get; set; }
        public string Napomena { get; set; }
    }
}
