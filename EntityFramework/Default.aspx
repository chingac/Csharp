<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="display" runat="server" OnClick="display_Click" Text="Display" />
        <br />
        ID<asp:TextBox ID="tbid" runat="server" Width="214px"></asp:TextBox>
        <asp:Button ID="delete" runat="server" OnClick="delete_Click" Text="Delete" />
        <br />
        Description<asp:TextBox ID="tbdesc" runat="server" Width="215px"></asp:TextBox>
        <asp:Button ID="add" runat="server" OnClick="add_Click" style="height: 26px" Text="Add " />
        <br />
        <asp:Button ID="edit" runat="server" OnClick="edit_Click" Text="Update" />
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-top: 130px">
        </asp:GridView>
        <br />
        <asp:EntityDataSource ID="EntityDataSource1" runat="server">
        </asp:EntityDataSource>
    
    </div>
    </form>
</body>
</html>
