using System;
using System.Collections.Generic;

#nullable disable

namespace DataMigration.Models
{
    public partial class Book
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int? Year { get; set; }
        public string Publisher { get; set; }
        public string Author { get; set; }
        public string Note { get; set; }
        public string Collection { get; set; }
        public bool? Read { get; set; }
        public int? CategoryId { get; set; }

        public virtual Category Category { get; set; }
    }
}
