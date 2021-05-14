using BookCatalog.Common.BindingModels.Category;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.Common.BindingModels.Book
{
    public class BookEditBindingModel
    {
         public int Id { get; set; }

        [Required]
        [StringLength(200)]
        public string Title { get; set; }

        [Range(1, 2050)]
        public int? Year { get; set; }

        [StringLength(56)]
        public string Publisher { get; set; }

        [StringLength(56)]
        public string Author { get; set; }

        public string Note { get; set; }

        [StringLength(56)]
        public string Collection { get; set; }

        [Display(Name = "Already read")]
        public bool Read { get; set; }
        public int? CategoryId { get; set; }

        //public CategoryDetailsBindingModel Category { get; set; }
    }
}
