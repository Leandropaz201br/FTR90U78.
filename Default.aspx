<%--/*<header>
<entity> towers </entity>
<project> (FTR90U78) </project>
<developerid> Leandropaz (201br) </developerid>
</header>*/--%>

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="utilisateur._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <p>
&nbsp;&nbsp;
        <table class="nav-justified">
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #000000">
                    <img src="img/acces_aux_applications.png" style="width: 90px; height: 90px" /></td>
                <td class="text-center" colspan="2" style="background-color: #000000">
                    <img alt="" src="img/acces_aux_applications.png" style="width: 90px; height: 90px" />
                    <img alt="" src="img/acces_aux_applications.png" style="width: 90px; height: 90px" /></td>
                <td style="background-color: #000000">
                    <img alt="" class="pull-right" src="img/acces_aux_applications.png" style="width: 90px; height: 90px" /></td>
            </tr>
            <tr>
                <td style="height: 63px"></td>
                <td colspan="2" style="height: 63px"><strong>
                    <asp:Label ID="LBVaccination" runat="server" style="font-size: x-large" Text="Protocole Covid19 - Vaccination"></asp:Label>
                    </strong></td>
                <td style="height: 63px"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2" style="background-color: #33CCFF">
        <asp:Label ID="LBapplications" runat="server" Text="accês aux applications" style="text-align: center; font-weight: 700; text-decoration: underline"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="background-color: #33CCFF">&nbsp;</td>
                <td style="background-color: #33CCFF">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 22px"></td>
                <td class="text-right" style="height: 22px; background-color: #33CCFF">
        <asp:Label ID="LBUtilisateur" runat="server" Text="Utilisateur:    " style="font-weight: 700; text-align: left"></asp:Label>
        
                </td>
                <td class="text-left" style="height: 22px; background-color: #33CCFF">&nbsp;<asp:TextBox ID="TButilisateur" runat="server"></asp:TextBox>
        
                </td>
                <td style="height: 22px"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="background-color: #33CCFF">&nbsp;</td>
                <td style="background-color: #33CCFF">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="text-right" style="background-color: #33CCFF">
        <asp:Label ID="LBPasse" runat="server" Text="Le Mot De Passe:" style="font-weight: 700"></asp:Label>
                </td>
                <td class="text-left" style="background-color: #33CCFF">
        &nbsp;
        <asp:TextBox ID="TBPasse" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 46px"></td>
                <td colspan="2" style="height: 46px; background-color: #33CCFF">
        <asp:Button ID="BTAccéder" runat="server" OnClick="BTAccéder_Click" Text="Accéder" />
                </td>
                <td style="height: 46px"></td>
            </tr>
        </table>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>
