using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.Common.BindingModels.Category
{
    public class CategoryEditBindingModel
    {
        public int Id { get; set; }

        [Required]
        [StringLength(48)]
        [Display(Name = "Category name")]
        public string Name { get; set; }
    }
}
