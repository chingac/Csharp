<%@ Page Language="C#" AutoEventWireup="true" Theme="YellowShades" CodeFile="ToppingsPage.aspx.cs" Inherits="ToppingsPage" MasterPageFile="Master/MasterPage.master" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 44%;
        }

        .auto-style2 {
            width: 306px;
        }

        .auto-style3 {
            width: 267px;
        }
    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="navigation" runat="server">
    <asp:HyperLink ID="hlhomepage" runat="server" NavigateUrl="~/HomePage.aspx">Return to Homepage</asp:HyperLink>
</asp:Content>

<asp:Content ContentPlaceHolderID="pageContent" runat="server">
    <div>
        <h2>Toppings</h2>
    </div>
    <div>
        <asp:GridView ID="gvToppings" runat="server" AutoGenerateColumns="False" DataKeyNames="toppingId" DataSourceID="MaryPizzaEntities" ShowFooter="True">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="deleteButton" runat="server" CommandName="Delete" Text="Delete"
                            OnClientClick="return confirm('Confirmation: Delete Topping?');" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="toppingId" HeaderText="toppingId" ReadOnly="True" SortExpression="toppingId" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="active" HeaderText="active" SortExpression="active" />
            </Columns>
        </asp:GridView>
    </div>
    <div>
        <h3>Add a Topping:</h3>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <h4>Topping Name</h4>
                </td>
                <td class="auto-style2">
                    <h4>Active</h4>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="tbToppingName" runat="server" Width="205px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:CheckBox ID="cbActive" runat="server" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />

    </div>
    <asp:EntityDataSource ID="MaryPizzaEntities" runat="server" ConnectionString="name=MaryPizzaEntities" DefaultContainerName="MaryPizzaEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Toppings">
    </asp:EntityDataSource>
</asp:Content>
