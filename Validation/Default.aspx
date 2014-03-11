<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 196px;
        }
        .auto-style3 {
            width: 196px;
            height: 61px;
        }
        .auto-style4 {
            height: 61px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <script type="text/javascript">
            function ValidateComment(source, args) {
                if (args.Value.indexOf("property") > -1) {
                    args.IsValid = true;
                } else {
                    args.IsValid = false;
                }
            }
        </script>

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="fname" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbfname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbfname" ErrorMessage="First Name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lname" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tblname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tblname" ErrorMessage="Last name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbemail" ErrorMessage="Email is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="emailvalidate" runat="server" ErrorMessage="Enter a valid email address" ValidationExpression="(?:[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*|&quot;(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*&quot;)@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])" ControlToValidate="tbemail" ForeColor="Red">*</asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="pcode" runat="server" Text="PostalCode"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbpostal" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbpostal" ErrorMessage="Postal code is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Postal code is not valid" ValidationExpression="^[A-Za-z]\d[A-Za-z]? \d[A-Za-z]\d$" ControlToValidate="tbpostal" ForeColor="Red">*</asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="dor" runat="server" Text="Date of Registration"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbdor" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbdor" ErrorMessage="date is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tbdor" ErrorMessage="Must enter a valid date" ForeColor="Red" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lsf" runat="server" Text="Land Square Footage"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tblsf" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tblsf" ErrorMessage="land square footage is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="lsfvalidate" runat="server" ErrorMessage="must be between 500 and 10000" MaximumValue="10000" MinimumValue="500" Type="Integer" ControlToValidate="tblsf" ForeColor="Red">*</asp:RangeValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="hsf" runat="server" Text="House Square Footage"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbhsf" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbhsf" ErrorMessage="house square footage is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="hsfvalidate" runat="server" MaximumValue="10000" MinimumValue="500" Type="Integer" ControlToValidate="tbhsf" ForeColor="Red" ErrorMessage="must be between 500 to 10000">*</asp:RangeValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="tblsf" ControlToValidate="tbhsf" ErrorMessage="must be less than land square footage" Operator="LessThan" ForeColor="Red" Type="Integer">*</asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="comments" runat="server" Text="Comments"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbcomments" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="ValidateComment" runat="server" ErrorMessage="must not contain property" ClientValidationFunction="ValidateComment" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="tbcomments" ForeColor="Red">*</asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Save" />
                </td>
                <td class="auto-style4"></td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
