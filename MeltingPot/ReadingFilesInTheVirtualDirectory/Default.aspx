<%@ Page Title="" Language="C#" Theme="SmokeAndGlass" 
    MasterPageFile="~/MasterPages/MasterPage.master" 
    AutoEventWireup="true" CodeFile="Default.aspx.cs" 
    Inherits="ReadingFilesInTheVirtualDirectory_Default" %>

<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">
            <br />
    <h3>Files in the virtual directory</h3>
    ASP.NET listbox Server Control<br/>
    <asp:listbox id="lstFiles" runat= "Server" rows="15"/><br/>
    <span id="spanMessage" runat="Server"/>
</asp:Content>

