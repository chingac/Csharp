<%@ Page Language="C#" AutoEventWireup="true"  Theme="SmokeAndGlass" MasterPageFile="~/MasterPages/MasterPage.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

<script runat="server" language="C#">
void UploadButton_Click(object sender, EventArgs e) {
  // Specify the path on the server to save the uploaded file to.
  string savePath = MapPath("~/uploads/");
  System.IO.Directory.CreateDirectory(savePath);
  // Before attempting to perform operations on the file,
  // verify that the FileUpload control contains a file
  if (fileUpload.HasFile) {
    // Get the name of the file to upload and append to path
    savePath += fileUpload.FileName;
    // Call the SaveAs method to save uploaded file to specified path. 
    // This example does not perform all the necessary error checking. 
    // If file with same name exists, the uploaded file overwrites it.
    fileUpload.SaveAs(savePath);
    // Notify the user of the name the file was saved under.
    UploadStatusLabel.Text = "File saved as: <i>" + savePath + "</i>";
  } else {
    // Notify the user that a file was not uploaded.
    UploadStatusLabel.Text = "You did not specify a file to upload.";
  }
}
</script><h3>Upload files to the server</h3>

  <h4>
      
      <br />
      Select a file to upload:</h4>
  <asp:fileupload id="fileUpload" runat="server" /><br /><br/>
  <asp:button id="UploadButton" text="Upload file"
  onclick="UploadButton_Click" runat="server" /><hr />
  <asp:label id="UploadStatusLabel" runat="server"/>

</asp:Content>