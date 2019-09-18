using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace BlazorDemo.Data
{
    public class ContactService
    {
        private readonly ContactsContext _context;

        public ContactService(ContactsContext context)
        {
            _context = context;
        }

        public Task<List<Contact>> GetContactsAsync()
        {
            return Task.FromResult(_context.Contact.ToList());
               
        }

        public Task<Contact> GetContactAsync(Guid contactId)
        {
            return Task.FromResult(_context.Contact.FirstOrDefault(c => c.ContactId == contactId));
        }
    }
}
