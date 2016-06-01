<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testpage.aspx.cs" Inherits="PIT4_IMDB.Testpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>Voer IMDBnummer in: <asp:TextBox ID="TB_IMDBnummer" runat="server"></asp:TextBox></div>
        <div>Voer Filmnaam in: <asp:TextBox ID="TB_Filmnaam" runat="server"></asp:TextBox></div>
        <div>Voer Duur in: <asp:TextBox ID="TB_Duur" runat="server"></asp:TextBox></div>
        <div>Voer Geluid in: <asp:TextBox ID="TB_Geluid" runat="server"></asp:TextBox></div>
        <div>Voer Alternatieve naam in: <asp:TextBox ID="TB_Alternatieve" runat="server"></asp:TextBox></div>
        <div>Voer Poster in: <asp:TextBox ID="TB_Poster" runat="server"></asp:TextBox></div>
        <div>Voer datum toegevoegd in: <asp:TextBox ID="TB_datum" runat="server"></asp:TextBox></div>
        <div>Voer Versie in: <asp:TextBox ID="TB_Versie" runat="server"></asp:TextBox></div>
        <div>Voer Gemiddelde beoordeling in: <asp:TextBox ID="TB_beoordeling" runat="server"></asp:TextBox></div>
        <div>Voer FilmID in: <asp:TextBox ID="TB_FilmID" runat="server"></asp:TextBox></div>
        <div>
            <asp:Button ID="Btn_Insert" runat="server" Text="Sla op" /></div>
    </div>
    </form>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</body>
</html>
