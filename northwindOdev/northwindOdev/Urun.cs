using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace northwindOdev
{
    public class Urun
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public int? SupplierID { get; set; } // Nullable
        public int CategoryID { get; set; }
        public string QuantityPerUnit { get; set; }
        public decimal? UnitPrice { get; set; } // Nullable
        public short? UnitsInStock { get; set; } // Nullable
        public short? UnitsOnOrder { get; set; } // Nullable
        public short? ReorderLevel { get; set; } // Nullable
        public bool Discontinued { get; set; }
    }
}