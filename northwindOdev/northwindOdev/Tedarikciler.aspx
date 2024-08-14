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
 </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="kaplama">
            <asp:GridView ID="gv_tedarikciler" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="SupplierID" HeaderText="Supplier ID" />
                    <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                    <asp:BoundField DataField="ContactName" HeaderText="Contact Name" />
                    <asp:BoundField DataField="ContactTitle" HeaderText="Contact Title" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:BoundField DataField="Region" HeaderText="Region" />
                    <asp:BoundField DataField="PostalCode" HeaderText="Postal Code" />
                    <asp:BoundField DataField="Country" HeaderText="Country" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" />
                    <asp:BoundField DataField="Fax" HeaderText="Fax" />
                </Columns>
                <AlternatingRowStyle CssClass="alternate" />
            </asp:GridView>

        </div>
    </form>
</body>
</html>
