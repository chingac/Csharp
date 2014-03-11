<%@ Page Title="" Language="C#" Theme="SmokeAndGlass" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="WritingToTextFile_Default" %>

<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">
 <h3>
    Give us your suggestions and we will write it to a text file.</h3>
    textbox ASP.NET Server Control<br/>
    <asp:textbox id="txtSuggestions" cols="40" rows="4" runat="Server" textmode="multiline" /><br/>
    button ASP.NET Server Control<br/>
    <asp:button id="btnSubmit" text="Save to text file" runat="Server" onClick="Page_Load"/><br/>
    <span id="spanMessage" runat="Server"/>

</asp:Content>

