using System;
using Microsoft.EntityFrameworkCore;

namespace BlazorDemo.Data
{
    public partial class ContactsContext : DbContext
    {
        public virtual DbSet<Contact> Contact { get; set; }

        public ContactsContext(DbContextOptions<ContactsContext> options) : base(options)
        {
        }

    }
}
