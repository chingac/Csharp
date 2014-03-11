<%@ Page Language="C#" AutoEventWireup="true" Theme="YellowShades" CodeFile="ReportsPage.aspx.cs" Inherits="ReportsPage" MasterPageFile="Master/MasterPage.master" %>


<asp:Content ContentPlaceHolderID="head" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 96px;
        }

        .auto-style3 {
            width: 140px;
        }

        .auto-style4 {
            width: 65px;
        }
    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="navigation" runat="server">
    <asp:HyperLink ID="hlhomepage" runat="server" NavigateUrl="~/HomePage.aspx">Return to Homepage</asp:HyperLink>
</asp:Content>

<asp:Content ContentPlaceHolderID="pageContent" runat="server">
    <h2>Reports</h2>
    <!--
    <div class="row">
        <div class="col-xs-2">From</div>
        <div class="col-xs-4"></div>
        <div class="col-xs-6"></div>
    </div>
    <div class="row">
        <div class="col-xs-2">To</div>
        <div class="col-xs-4"></div>
        <div class="col-xs-6"></div>
    </div>
    -->
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">From:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tbFromDate" runat="server" ReadOnly="True"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="reqValidatorFromDate" runat="server" ControlToValidate="tbFromDate" Display="Dynamic" ErrorMessage="Date is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">
                <asp:ImageButton ID="ibtnFromDate" runat="server" OnClick="ibtnFromDate_Click" Height="26px" ImageUrl="~/images/calendar_icon1.png" Width="32px" CausesValidation="False" />
            </td>
            <td rowspan="2">
                <asp:Calendar ID="calendarCtrl" runat="server" Height="164px" OnSelectionChanged="calendarCtrl_SelectionChanged" Width="262px" ValidateRequestMode="Disabled"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">To:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tbToDate" runat="server" ReadOnly="True"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="reqValidatorToDate" runat="server" ControlToValidate="tbToDate" Display="Dynamic" ErrorMessage="Date is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cmpValidatorDates" runat="server" ControlToCompare="tbFromDate" ControlToValidate="tbToDate" Display="Dynamic" ErrorMessage="Time travel is not allowed! Check your Date range." ForeColor="Red" Operator="GreaterThanEqual" Type="Date">*</asp:CompareValidator>
            </td>
            <td class="auto-style4">
                <asp:ImageButton ID="ibtnToDate" runat="server" OnClick="ibtnToDate_Click" Height="25px" ImageUrl="~/images/calendar_icon1.png" Width="30px" CausesValidation="False" />
            </td>
        </tr>
    </table>
    <div>
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        <br />
    </div>

    <asp:GridView ID="gvOrders" runat="server">
    </asp:GridView>
</asp:Content>

