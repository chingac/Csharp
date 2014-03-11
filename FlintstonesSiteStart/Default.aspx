<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="dvnContainer" runat="server">
            Select a Cartoon Character:
            <asp:DropDownList ID="ddlFlintstones" runat="server" OnSelectedIndexChanged="ddlFlintstones_SelectedIndexChanged" AutoPostBack="True" Height="49px" style="margin-left: 59px" Width="134px" >
                <asp:ListItem Value="~/images/bambam.jpg">Bam Bam</asp:ListItem>
                <asp:ListItem Value="~/images/barney.jpg">Barney</asp:ListItem>
                <asp:ListItem Value="~/images/betty.jpg">Betty</asp:ListItem>
                <asp:ListItem Value="~/images/dino.jpg">Dino</asp:ListItem>
                <asp:ListItem Value="~/images/fred.jpg">Fred</asp:ListItem>
                <asp:ListItem Value="~/images/pebbles.jpg">Pebbles</asp:ListItem>
                <asp:ListItem Value="~/images/wilma2.jpg">Wilma</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Image ID="imgFlintstone" runat="server" Height="267px" style="margin-left: 427px" Width="316px" />

            <br />
            <br />

        </div>
    </form>
</body>
</html>
