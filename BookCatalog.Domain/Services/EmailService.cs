using Microsoft.AspNetCore.Identity.UI.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.Domain.Services
{
    public class EmailService : IEmailSender
    {
        private readonly SmtpClient _smtpClient;

        public EmailService()
        {

            _smtpClient = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                Credentials = new NetworkCredential("jadrangrba@gmail.com", "vezica526247"),
                EnableSsl = true
            };
        }

        public async Task SendEmailAsync(string email, string subject, string htmlMessage)
        {

            var mail = new MailMessage
            {
                From = new MailAddress("jadrangrba@gmail.com"),
                Subject = subject,
                Body = htmlMessage,
                IsBodyHtml = true
            };

            mail.To.Add(email);
            await _smtpClient.SendMailAsync(mail);
        }
    }
}
