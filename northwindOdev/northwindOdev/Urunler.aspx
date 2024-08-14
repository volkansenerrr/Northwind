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

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .Ust-Kisim {
            display: flex;
            align-items: center;
            background-color: #eaeaea;
            padding: 20px 30px;
        }

        .navigasyon {
            align-items: center
        }

        .navigasyon-butonu {
            display: inline-block;
            padding: 10px 15px;
            margin-left: 35px;
            text-decoration: none;
            color: black;
            background-color: #ffffffff;
            border-radius: 5px;
            border: 1px solid #ffffff;
        }

            .navigasyon-butonu:hover {
                background-color: #ced4da;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="kaplama">
            <div>
                <header>
                    <div class="Ust-Kisim">
                        <nav class="navigasyon">
                            <a href="Anasayfa.aspx" class="navigasyon-butonu">Anasayfa</a>
                        </nav>
                    </div>
                </header>
            </div>
            <asp:GridView ID="gv_urunler" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="Ürün ID" />
                    <asp:BoundField DataField="ProductName" HeaderText="Ürün İsmi" />
                    <asp:BoundField DataField="SupplierID" HeaderText="Tedarikçi ID" />
                    <asp:BoundField DataField="CategoryID" HeaderText="Kategori ID" />
                    <asp:BoundField DataField="QuantityPerUnit" HeaderText="Birim Başına Miktar" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="Birim Fiyatı" />
                    <asp:BoundField DataField="UnitsInStock" HeaderText="Stoktaki Birimler" />
                    <asp:BoundField DataField="UnitsOnOrder" HeaderText="Sipariş Edilen Birimler" />
                    <asp:BoundField DataField="ReorderLevel" HeaderText="Yeniden Sipariş Seviyesi" />
                    <asp:BoundField DataField="Discontinued" HeaderText="Üretimi Durdurulmuş / Satışı Durdurulmuş" />
                </Columns>
                <AlternatingRowStyle CssClass="alternate" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
