using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.Common.Helpers
{

    public static class StringHelper
    {
        public static string PrintObjectProps(object objectToPrint)
        {
            string printedProps = string.Empty;

            foreach (PropertyDescriptor descriptor in TypeDescriptor.GetProperties(objectToPrint))
            {
                string name = descriptor.Name;
                object value = descriptor.GetValue(objectToPrint);
                printedProps += @$"{name}=""{value}"", ";
            }

            return printedProps;
        }


    }
}
