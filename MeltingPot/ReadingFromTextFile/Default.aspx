<%@ Page Language="C#" AutoEventWireup="true" Theme="SmokeAndGlass" MasterPageFile="~/MasterPages/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">

<h4>Reading from a text file named suggestion.txt</h4>
<script language="C#" runat="Server">
  void Page_Load() {
    // Get fully qualified location of virtual directory
    string filename = MapPath("./") + "suggestions.txt";
    System.IO.StreamReader rdr = new System.IO.StreamReader(filename);
    txtSuggestions.Text = rdr.ReadToEnd();
    rdr.Close();
  }
</script>

    <br />
    <h2>Reading from a text file</h2>
ASP.NET textbox Server Control<br/>
<asp:textbox id="txtSuggestions" cols="40" rows="4" runat="Server" textmode="multiline" /><br/>
<span id="spanMessage" runat="Server"/>


</asp:Content>