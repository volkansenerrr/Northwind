<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="northwindOdev.Urunler" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ürünler</title>
    <style>
        /* Sayfayı kaplayan div için stil */
        .kaplama {
            position: absolute; /* Ekranın tamamını kaplayacak şekilde ayarlama */
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: auto; /* İçeriğin sığmaması durumunda kaydırma çubuğu ekler */
        }

        /* GridView için stil */
        #gv_urunler {
            width: 100%; /* Tablo genişliğini ekranın tamamına yayma */
            border-collapse: collapse; /* Sınırların birleştirilmesini sağlar */
        }

        /* Alternatif satırlar için stil */
        .alternate {
            background-color: lightgray;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="kaplama">
            <asp:GridView ID="gv_urunler" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="Product ID" />
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                    <asp:BoundField DataField="SupplierID" HeaderText="Supplier ID" />
                    <asp:BoundField DataField="CategoryID" HeaderText="Category ID" />
                    <asp:BoundField DataField="QuantityPerUnit" HeaderText="Quantity Per Unit" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" />
                    <asp:BoundField DataField="UnitsInStock" HeaderText="Units In Stock" />
                    <asp:BoundField DataField="UnitsOnOrder" HeaderText="Units On Order" />
                    <asp:BoundField DataField="ReorderLevel" HeaderText="Reorder Level" />
                    <asp:BoundField DataField="Discontinued" HeaderText="Discontinued" />
                </Columns>
                <AlternatingRowStyle CssClass="alternate" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
