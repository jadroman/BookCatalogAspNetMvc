using Microsoft.AspNetCore.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookCatalog.Web.Controllers
{
    public class ErrorController : Controller
    {
        private readonly ILogger<ErrorController> _logger;

        public ErrorController(ILogger<ErrorController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            var context = HttpContext.Features.Get<IExceptionHandlerFeature>();

            if (context != null && context.Error != null)
            {
                _logger.LogError(context.Error.StackTrace);
                ViewBag.ErrorRecorded = "The error has been recorded!";
            }

            return View();
        }
    }
}
