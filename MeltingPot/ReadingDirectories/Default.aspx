<%@ Page Title="" Language="C#" Theme="SmokeAndGlass" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ReadingDirectories_Default" %>


<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="Server">
    <br />
    <h3>These are directories under c:\ on the server</h3>
    ASP.NET listbox Server Control<br />
    <asp:ListBox ID="lstFiles" runat="Server" Rows="15" /><br />
    <span id="spanMessage" runat="Server" />
</asp:Content>

