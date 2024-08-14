using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace northwindOdev
{
    public partial class Tedarikciler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=NORTHWND; Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT SupplierID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax FROM Suppliers";
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            List<Tedarikci> tedarikciler = new List<Tedarikci>();

            while (reader.Read())
            {
                Tedarikci t = new Tedarikci();
                t.SupplierID = reader.GetInt32(0);
                t.CompanyName = reader.GetString(1);
                t.ContactName = reader.GetString(2);
                t.ContactTitle = reader.GetString(3);
                t.Address = reader.IsDBNull(4) ? null : reader.GetString(4);
                t.City = reader.IsDBNull(5) ? null : reader.GetString(5);
                t.Region = reader.IsDBNull(6) ? null : reader.GetString(6);
                t.PostalCode = reader.IsDBNull(7) ? null : reader.GetString(7);
                t.Country = reader.IsDBNull(8) ? null : reader.GetString(8);
                t.Phone = reader.IsDBNull(9) ? null : reader.GetString(9);
                t.Fax = reader.IsDBNull(10) ? null : reader.GetString(10);
                tedarikciler.Add(t);
            }

            gv_tedarikciler.DataSource = tedarikciler; // tedarikciler listesinin doğru dolduğundan emin olun
            gv_tedarikciler.DataBind(); // Veriyi bağla

            con.Close();
        }
    }
}