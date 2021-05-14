using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.Common.Helpers
{
    public class GridFilter
    {
        public string SortColumn { get; set; }
        public string SortColumnDirection { get; set; }
        public string SearchValue { get; set; }
        public int PageSize { get; set; }
        public int Skip { get; set; }
    }
}
