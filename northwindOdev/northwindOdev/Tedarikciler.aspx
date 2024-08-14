<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tedarikciler.aspx.cs" Inherits="northwindOdev.Tedarikciler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tedarikçiler</title>
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
        #gv_tedarikciler {
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
            <asp:GridView ID="gv_tedarikciler" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="SupplierID" HeaderText="Tedarikçi ID" />
                    <asp:BoundField DataField="CompanyName" HeaderText="Şirket Adı" />
                    <asp:BoundField DataField="ContactName" HeaderText="İletişim Adı" />
                    <asp:BoundField DataField="ContactTitle" HeaderText="İletişim Ünvanı" />
                    <asp:BoundField DataField="Address" HeaderText="Adres" />
                    <asp:BoundField DataField="City" HeaderText="Şehir" />
                    <asp:BoundField DataField="Region" HeaderText="Bölge" />
                    <asp:BoundField DataField="PostalCode" HeaderText="Posta Kodu" />
                    <asp:BoundField DataField="Country" HeaderText="Ülke" />
                    <asp:BoundField DataField="Phone" HeaderText="Telefon" />
                    <asp:BoundField DataField="Fax" HeaderText="Faks" />
                </Columns>
                <AlternatingRowStyle CssClass="alternate" />
            </asp:GridView>

        </div>
    </form>
</body>
</html>
