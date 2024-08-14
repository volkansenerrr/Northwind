using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace northwindOdev
{
    public class Personel
    {
        public int EmployeeID { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string Title { get; set; }
        public string TitleOfCourtesy { get; set; }
        public DateTime? BirthDate { get; set; } // Nullable DateTime
        public DateTime? HireDate { get; set; }   // Nullable DateTime
        public string Address { get; set; }
        public string City { get; set; }
        public string Region { get; set; }
        public string PostalCode { get; set; }
        public string Country { get; set; }
        public string HomePhone { get; set; }
        public string Extension { get; set; }
        public byte[] Photo { get; set; } // Nullable by default
        public string Notes { get; set; }
        public int? ReportsTo { get; set; } // Nullable int
        public string PhotoPath { get; set; }
    }
}