<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recnik.aspx.cs" Inherits="B10Recnik.recnik" %>

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
            
             <div>

            <asp:Label ID="Label1" runat="server" Text="Smer: "></asp:Label>
                 &nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Selektuj smer prevodjenja</asp:ListItem>
                <asp:ListItem Value="SE">Srpsko-Engleski</asp:ListItem>
                <asp:ListItem Value="ES">Englesko-Srpski</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Engleska reč: "></asp:Label>   &nbsp;
               
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>            
            
&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Srpska reč: "></asp:Label>   &nbsp;             
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Opis: "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>

            <br />
            <br />

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Prevedi" />


            <!--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/dodavanjeNovihReci.aspx">Dodavanje novih reci</asp:HyperLink>-->

        </div>


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
