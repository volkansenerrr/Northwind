<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personeller.aspx.cs" Inherits="northwindOdev.Personeller" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personeller</title>
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
    #gv_personeller {
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
            <asp:GridView ID="gv_personeller" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="TitleOfCourtesy" HeaderText="Title Of Courtesy" />
                    <asp:BoundField DataField="BirthDate" HeaderText="Birth Date" />
                    <asp:BoundField DataField="HireDate" HeaderText="Hire Date" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:BoundField DataField="Region" HeaderText="Region" />
                    <asp:BoundField DataField="PostalCode" HeaderText="Postal Code" />
                    <asp:BoundField DataField="Country" HeaderText="Country" />
                    <asp:BoundField DataField="HomePhone" HeaderText="Home Phone" />
                    <asp:BoundField DataField="Extension" HeaderText="Extension" />
                    <asp:BoundField DataField="Photo" HeaderText="Photo" />
                    <asp:BoundField DataField="Notes" HeaderText="Notes" />
                    <asp:BoundField DataField="ReportsTo" HeaderText="Reports To" />
                    <asp:BoundField DataField="PhotoPath" HeaderText="Photo Path" />
                </Columns>
                <AlternatingRowStyle CssClass="alternate" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
