using Microsoft.AspNetCore.Html;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookCatalog.Web.Helpers
{
    public static class StringHelper
    {
        public static string IsSelected(this IHtmlHelper htmlHelper, string controllers, string actions, string cssClass = "nav-item active")
        {
            string currentController = htmlHelper.ViewContext.RouteData.Values["controller"] as string;
            string currentPage = htmlHelper.ViewContext.RouteData.Values["page"] as string;

            IEnumerable<string> acceptedControllers = (controllers ?? currentController).Split(',');
            IEnumerable<string> acceptedPages = (actions ?? currentPage).Split(',');

            return acceptedControllers.Contains(currentController) || acceptedPages.Contains(currentPage) ?
                cssClass : "nav-item";
        }


    }
}
