<%@ Page Language="C#" AutoEventWireup="true" Theme="YellowShades" CodeFile="OrderPage.aspx.cs" Inherits="OrderPage" MasterPageFile="Master/MasterPage.master"%>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <title>Order</title>
    <style type="text/css">
        .auto-style1 {
            width: 161%;
            height: 400px;
        }

        .auto-style2 {
            height: 23px;
        }

        .auto-style3 {
            height: 23px;
            width: 378px;
        }

        .auto-style4 {
            width: 378px;
        }

        .auto-style5 {
            width: 378px;
            height: 10px;
        }

        .auto-style6 {
            height: 10px;
        }

        .auto-style7 {
            height: 19px;
            width: 378px;
        }

        .auto-style8 {
            height: 19px;
        }
        .col-xs-6 {
            width: auto;
            color: black;
            text-align: left;
            top: 2px;
            left: 6px;
            margin-left: 0px;
        }
    </style>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</asp:Content>

<asp:Content ContentPlaceHolderID="navigation" runat="server">
    <asp:HyperLink ID="hlhomepage" runat="server" NavigateUrl="~/HomePage.aspx">Return to Homepage</asp:HyperLink>
</asp:Content>

<asp:Content ContentPlaceHolderID="pageContent" runat="server">
    <div class="container">
            <div>
                <h2>Order</h2>
            </div>

            <div class="row">
                <div class="col-xs-6">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">

                                <asp:Label ID="lblfname1" runat="server" Text="First Name:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="tbfname" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="First name is required" ControlToValidate="tbfname" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="lbllname1" runat="server" Text="Last Name:"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:TextBox ID="tblname" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Last name is required" ControlToValidate="tblname" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="lblemail1" runat="server" Text="Email Address:"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Email address is required" ControlToValidate="tbemail" ForeColor="Red">*</asp:RequiredFieldValidator>
                                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid email address" ForeColor="Red" ValidationExpression="(?:[a-z0-9!#$%&amp;amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;amp;'*+/=?^_`{|}~-]+)*|&amp;quot;(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*&amp;quot;)@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])" ControlToValidate="tbemail"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="lbltelno1" runat="server" Text="Telephone number:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="tbtelno" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Telephone number is required" ControlToValidate="tbtelno" ForeColor="Red">*</asp:RequiredFieldValidator>
                                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a valid telephone number" ControlToValidate="tbtelno" ForeColor="Red" ValidationExpression="\d{3}[.]\d{3}[.]\d{4}"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="lblsize1" runat="server" Text="Pizza size (small, medium, or large):"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="tbPizzaSize" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Pizza size is required" ControlToValidate="tbPizzaSize" ForeColor="Red">*</asp:RequiredFieldValidator>
                                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter small, medium or large pizza size" ControlToValidate="tbPizzaSize" ForeColor="Red" ValidationExpression="^\b(small)\b|^\b(medium)\b|^\b(large)\b"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="lblamount1" runat="server" Text="Number of pizzas:"></asp:Label>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="tbpizzanum" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Number of pizzas is required" ControlToValidate="tbpizzanum" ForeColor="Red">*</asp:RequiredFieldValidator>
                                &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please select a valid pizza amount(1-99)" ControlToValidate="tbpizzanum" ForeColor="Red" MaximumValue="99" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="lbltoppings1" runat="server" Text="Preferred toppings:"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBoxList ID="cktoppings" runat="server" DataSourceID="EntityDataSource1" DataTextField="name" DataValueField="toppingId">
                                </asp:CheckBoxList>
                                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Please select at least one topping" OnServerValidate="CustomValidator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>
                                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=MaryPizzaEntities" DefaultContainerName="MaryPizzaEntities" EnableFlattening="False" EntitySetName="Toppings" Select="it.[name], it.[toppingId]">
                                </asp:EntityDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="lbldelivery1" runat="server" Text="Delivery (pickup or delivery):"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="tbdelivery" runat="server"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Delivery type is required" ControlToValidate="tbpizzanum" ForeColor="Red">*</asp:RequiredFieldValidator>
                                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please enter for pickup or delivery" ControlToValidate="tbdelivery" ForeColor="Red" ValidationExpression="(?i)^\b(pickup)\b|^\b(delivery)\b"></asp:RegularExpressionValidator>
                                &nbsp;<asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Cannot deliver small pizzas" OnServerValidate="CustomValidator2_ServerValidate" ForeColor="Red"></asp:CustomValidator>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Button ID="tbSubmit" runat="server" Text="Submit" OnClick="tbSubmit_Click" />

                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>

                <br />

                <br />
                <br />
                <br />


                <div class="col-xs-6">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="lblorderSummary" runat="server" Text="Order Summary"></asp:Label>
                                <br />
                            </td>
                            <td class="auto-style2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">

                                <asp:Label ID="lblfname0" runat="server" Text="First Name:"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:Label ID="lbldisplayfname" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="lbllname0" runat="server" Text="Last Name:"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbldisplaylname" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="lblemail0" runat="server" Text="Email Address:"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbldisplayemail" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="lbltelno0" runat="server" Text="Telephone number:"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbldisplaytelno" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="lblsize0" runat="server" Text="Pizza size (small, medium, or large):"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbldisplaypizzasize" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="lblamount0" runat="server" Text="Number of pizzas:"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbldisplaypizzanum" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="lbltoppings0" runat="server" Text="Preferred toppings:"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:Label ID="lbldisplaytoppings" runat="server"></asp:Label>
                                <asp:ListView ID="ListView1" runat="server">
                                    <ItemTemplate >
                                        <li><%#Container.DataItem%></li>
                                    </ItemTemplate>
                                </asp:ListView>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="lbldelivery0" runat="server" Text="Delivery (pickup or delivery):"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbldisplaydelivery" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="lbldatetime0" runat="server" Text="Date and time of order:"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbldisplaydatetime" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <br />
        <br />
</asp:Content>

