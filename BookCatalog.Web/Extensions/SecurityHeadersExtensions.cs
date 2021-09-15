using BookCatalog.Web.Middlewares;
using Microsoft.AspNetCore.Builder;

namespace BookCatalog.Web.Extensions
{

    public static class SecurityHeadersExtensions
    {
        public static IApplicationBuilder UseSecurityHeaders(this IApplicationBuilder builder)
        {
            return builder.UseMiddleware<SecurityHeaders>();
        }
    }
}
