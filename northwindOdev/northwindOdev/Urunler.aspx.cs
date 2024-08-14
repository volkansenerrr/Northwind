using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace northwindOdev
{
    public partial class Urunler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source= .\SQLEXPRESS; Initial Catalog=NORTHWND; Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued FROM Products";
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            List<Urun> urunler = new List<Urun>();

            while (reader.Read())
            {
                Urun u = new Urun();
                u.ProductID = reader.GetInt32(0);
                u.ProductName = reader.GetString(1);
                u.SupplierID = reader.IsDBNull(2) ? (int?)null : reader.GetInt32(2);
                u.CategoryID = reader.GetInt32(3);
                u.QuantityPerUnit = reader.IsDBNull(4) ? null : reader.GetString(4);
                u.UnitPrice = reader.IsDBNull(5) ? (decimal?)null : reader.GetDecimal(5);
                u.UnitsInStock = reader.IsDBNull(6) ? (short?)null : reader.GetInt16(6);
                u.UnitsOnOrder = reader.IsDBNull(7) ? (short?)null : reader.GetInt16(7);
                u.ReorderLevel = reader.IsDBNull(8) ? (short?)null : reader.GetInt16(8);
                u.Discontinued = reader.GetBoolean(9);
                urunler.Add(u);
            }

            gv_urunler.DataSource = urunler;
            gv_urunler.DataBind();
            con.Close();
        }
    }
}