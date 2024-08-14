using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace northwindOdev
{
    public partial class Personeller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=NORTHWND; Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT EmployeeID, LastName, FirstName, Title, BirthDate, HireDate, Address, City, Country, HomePhone FROM Employees";

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            List<Personel> personeller = new List<Personel>();

            while (reader.Read())
            {
                Personel p = new Personel();
                p.EmployeeID = reader.GetInt32(0);
                p.LastName = reader.GetString(1);
                p.FirstName = reader.GetString(2);
                p.Title = reader.GetString(3);
                p.BirthDate = reader.IsDBNull(4) ? (DateTime?)null : reader.GetDateTime(4);
                p.HireDate = reader.IsDBNull(5) ? (DateTime?)null : reader.GetDateTime(5);
                p.Address = reader.IsDBNull(6) ? null : reader.GetString(6);
                p.City = reader.IsDBNull(7) ? null : reader.GetString(7);
                p.Country = reader.IsDBNull(8) ? null : reader.GetString(8);
                p.HomePhone = reader.IsDBNull(9) ? null : reader.GetString(9);
                personeller.Add(p);
            }

            gv_personeller.DataSource = personeller; // Veri kaynağını ata
            gv_personeller.DataBind(); // Veriyi bağla

            con.Close();
        }
    }
}