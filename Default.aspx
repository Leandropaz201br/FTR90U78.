<%--/*<header>
<entity> towers </entity>
<project> (FTR90U78) </project>
<developerid> Leandropaz (201br) </developerid>
</header>*/--%>

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="registertowers._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="LBAliasTower" runat="server" Text="AliasTower:"></asp:Label>
    <asp:TextBox ID="TBAliasTower" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LBLatitudePositionTower" runat="server" Text="Latitude Position Tower:"></asp:Label>
    <asp:TextBox ID="TBLatitudePositionTower" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LBLongitudePositionTower" runat="server" Text="Longitude Position Tower:"></asp:Label>
    <asp:TextBox ID="TBLongitudePositionTower" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LBHeightTower" runat="server" Text="Height Tower:"></asp:Label>
    <asp:TextBox ID="TBHeightTower" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LBHeightUnitTower" runat="server" Text="Height Unit Tower:"></asp:Label>
    <asp:TextBox ID="TBHeightUnitTower" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LBGaugeTower" runat="server" Text="Gauge Tower:"></asp:Label>
    <asp:TextBox ID="TBGaugeTower" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LBGaugeUnitTower" runat="server" Text="Gauge Unit Tower:"></asp:Label>
    <asp:TextBox ID="TBGaugeUnitTower" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LBTypeTower" runat="server" Text="Type Tower:"></asp:Label>
    <asp:TextBox ID="TBTypeTower" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LBStateTower" runat="server" Text="State Tower:"></asp:Label>
    <asp:TextBox ID="TBStateTower" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LBRegistrationDateTower" runat="server" Text="Registration Date Tower: "></asp:Label>
    <asp:TextBox ID="TBRegistrationDateTower" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LBStatusTower" runat="server" Text="Status Tower:"></asp:Label>
    <asp:TextBox ID="TBStatusTower" runat="server"></asp:TextBox>

    <br />
    <asp:Button ID="BTSave" runat="server" Text="Save" OnClick="BTSave_Click" />
    <asp:Button ID="BTClean" runat="server" Text="Clean" OnClick="BTClean_Click" />

    <br />
    <asp:Label ID="LBPosts" runat="server" Font-Bold="True" ForeColor="Red" Text="Posts"></asp:Label>

</asp:Content>
