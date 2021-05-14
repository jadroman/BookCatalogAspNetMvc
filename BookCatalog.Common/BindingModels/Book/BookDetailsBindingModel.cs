using BookCatalog.Common.BindingModels.Category;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.Common.BindingModels.Book
{
    public class BookDetailsBindingModel
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int? Year { get; set; }
        public string Publisher { get; set; }
        public string Author { get; set; }
        public string Note { get; set; }
        public string Collection { get; set; }
        public bool Read { get; set; }
        public CategoryDetailsBindingModel Category { get; set; }
    }
}
