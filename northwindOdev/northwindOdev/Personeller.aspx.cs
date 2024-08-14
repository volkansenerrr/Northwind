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
            cmd.CommandText = "SELECT EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, Photo, Notes, ReportsTo, PhotoPath FROM Employees";

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
                p.TitleOfCourtesy = reader.GetString(4);
                p.BirthDate = reader.IsDBNull(5) ? (DateTime?)null : reader.GetDateTime(5);
                p.HireDate = reader.IsDBNull(6) ? (DateTime?)null : reader.GetDateTime(6);
                p.Address = reader.IsDBNull(7) ? null : reader.GetString(7);
                p.City = reader.IsDBNull(8) ? null : reader.GetString(8);
                p.Region = reader.IsDBNull(9) ? null : reader.GetString(9);
                p.PostalCode = reader.IsDBNull(10) ? null : reader.GetString(10);
                p.Country = reader.IsDBNull(11) ? null : reader.GetString(11);
                p.HomePhone = reader.IsDBNull(12) ? null : reader.GetString(12);
                p.Extension = reader.IsDBNull(13) ? null : reader.GetString(13);
                p.Photo = reader.IsDBNull(14) ? null : (byte[])reader[14];
                p.Notes = reader.IsDBNull(15) ? null : reader.GetString(15);
                p.ReportsTo = reader.IsDBNull(16) ? (int?)null : reader.GetInt32(16);
                p.PhotoPath = reader.IsDBNull(17) ? null : reader.GetString(17);
                personeller.Add(p);
            }

            gv_personeller.DataSource = personeller; // Veri kaynağını ata
            gv_personeller.DataBind(); // Veriyi bağla

            con.Close();
        }
    }
}