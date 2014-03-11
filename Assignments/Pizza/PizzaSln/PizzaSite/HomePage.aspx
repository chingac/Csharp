<%@ Page Language="C#" AutoEventWireup="true" Theme="YellowShades" CodeFile="HomePage.aspx.cs" Inherits="HomePage" MasterPageFile="Master/MasterPage.Master"%>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
</asp:Content>

<asp:Content ContentPlaceHolderID="navigation" runat="server">
    <div class="row nav">
                <div class="col-xs-4">
                    <asp:HyperLink ID="hlOrderPage" runat="server" NavigateUrl="~/OrderPage.aspx">Order Page</asp:HyperLink>
                </div>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-xs-4">
                    <asp:HyperLink ID="hlToppings" runat="server" NavigateUrl="~/ToppingsPage.aspx">Toppings</asp:HyperLink>
                </div>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-xs-4">
                    <asp:HyperLink ID="hlReports" runat="server" NavigateUrl="~/ReportsPage.aspx">Reports</asp:HyperLink>
                </div>
            </div>
</asp:Content>

<asp:Content ContentPlaceHolderID="pageContent" runat="server">
            <asp:Label ID="Label2" runat="server" Text="Best pizza place. Located at Pizza avenue."></asp:Label>
            <br />
            
</asp:Content>