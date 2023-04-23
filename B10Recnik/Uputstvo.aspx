<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Uputstvo.aspx.cs" Inherits="B10Recnik.Uputstvo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    ELEKTRONSKI REČNIK
                </h1>
            </div>
            <div class="loginDisplay">
                <asp:LoginView ID="HeadLoginView" runat="server" EnableViewState="false">
                    <AnonymousTemplate>
                       
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                        Welcome <span class="bold"><asp:LoginName ID="HeadLoginName" runat="server" /></span>!
                        [ <asp:LoginStatus ID="HeadLoginStatus" runat="server" LogoutAction="Redirect" LogoutText="Log Out" LogoutPageUrl="~/"/> ]
                    </LoggedInTemplate>
                </asp:LoginView>
            </div>
            <div class="clear hideSkiplink">
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/recnik.aspx" Text="Rečnik"/>
                        <asp:MenuItem NavigateUrl="~/dodavanjeNovihReci.aspx" Text="Dodavanje novih reči"/>
                        <asp:MenuItem NavigateUrl="~/Uputstvo.aspx" Text="Uputstvo"/>
                    </Items>
                </asp:Menu>
            </div>
        </div>
        <div class="main">
            Veb aplikacija koja predstavlja recnik za prevođenje srpskog jezika na engleski i obrnuto. Korisnik može uneti
            reč na oba jezika u bazu podataka i nakon toga prevoditi tu reč u oba smera.
        </div>
        <div class="clear">
        </div>
    </div>
    <div class="footer">
        &copy; Osnovna škola "Sonja Marinković"
    </div>
    </form>
</body>
</html>
