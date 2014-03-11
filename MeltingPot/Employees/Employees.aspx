<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPages/MasterPage.master" CodeFile="Employees.aspx.cs" Theme="SmokeAndGlass" Inherits="Employees" %>



<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">


    <div>
        <asp:gridview id="gvemployees" runat="server" allowpaging="true" datakeynames="employeeid" datasourceid="objectdatasource1">
            <columns>
                <asp:commandfield showdeletebutton="true" showeditbutton="true" showselectbutton="true" />
            </columns>
        </asp:gridview>
        <asp:objectdatasource id="objectdatasource1" runat="server" dataobjecttypename="employeedetail"
            deletemethod="delete" insertmethod="create" selectmethod="get" typename="employee"
            updatemethod="update"></asp:objectdatasource>
    
    </div>
        <asp:detailsview id="detailsview1" runat="server" datasourceid="objectdatasource1"
            height="50px" width="125px">
            <fields>
                <asp:commandfield showinsertbutton="true" />
            </fields>
        </asp:detailsview>
</asp:Content>