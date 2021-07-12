﻿using System;
using BookCatalog.DAL;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using WebApplication2.Data;

[assembly: HostingStartup(typeof(WebApplication2.Areas.Identity.IdentityHostingStartup))]
namespace WebApplication2.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) => {
                services.AddDbContext<WebApplication2Context>(options =>
                    options.UseSqlServer(
                        context.Configuration.GetConnectionString("BookCatalog")));

                services.AddDefaultIdentity<IdentityUser>(options => options.SignIn.RequireConfirmedAccount = true)
                .AddEntityFrameworkStores<BookCatalogContext>()
                    .AddEntityFrameworkStores<WebApplication2Context>();
            });
        }
    }
}