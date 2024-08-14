<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="northwindOdev.Anasayfa" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Northwind</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <div class="Baslik-Icerigi">
                    <img src="image/Logo_Northwind.jpg" alt="Şirket Resmi" class="logo" />
                    <nav class="navigation">
                        <a href="personeller.aspx" class="nav-button">Personeller</a>
                        <a href="tedarikciler.aspx" class="nav-button">Tedarikçiler</a>
                        <a href="urunler.aspx" class="nav-button">Ürünler</a>
                    </nav>
                </div>
            </header>
            <main>
                <section class="northwind-info">
                    <h1>Northwind Veritabanı Nedir?</h1>
                    <p>
                        Northwind, veritabanı yönetimi ve SQL sorgulama konularında eğitim ve örnek veri sağlamak için kullanılan 
                bir örnek veritabanıdır. Microsoft tarafından sağlanan bu veritabanı, çeşitli iş süreçlerini ve 
                ilişkili veri yapılarıyla birlikte, gerçek dünya senaryolarını simüle etmek amacıyla tasarlanmıştır. 
                Northwind veritabanı, müşteri siparişleri, ürünler, tedarikçiler ve çalışanlar gibi temel iş 
                bilgilerini içeren tabloları içerir ve genellikle SQL öğrenme ve uygulama amacıyla kullanılır.
                 
                    </p>
                    <br />
                    <h2>Northwind Veritabanının Özellikleri:</h2>
                    <p>
                        <ul>
                            <li>9 tablodan oluşur.</li>
                            <li>Müşteriler, ürünler, siparişler ve faturalar gibi gerçek dünya verilerini içerir.</li>
                            <li>SQL sorguları, veri modelleme ve veri analizi gibi çeşitli konularda pratik yapmak için idealdir.</li>
                        </ul>
                    </p>
                    <br />
                    <p>
                        Yukarıdaki butonlar aracılığıyla personel, tedarikçi ve ürünler listelerine ulaşabilirsiniz.
                    </p>

                </section>
            </main>
        </div>
    </form>
</body>
</html>
