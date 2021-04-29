using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.Contracts.BindingModels.Category
{
    public class CategoryDetailsBindingModel
    {
        public int? Id { get; set; }
        public string Name { get; set; }
    }
}
