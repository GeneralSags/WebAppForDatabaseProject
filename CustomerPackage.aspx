<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerPackage.aspx.cs" Inherits="WebAppByPratibhaMaam.CustomerPackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="P_NAME" DataValueField="P_ID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;P_ID&quot;, &quot;P_NAME&quot; FROM &quot;PACKAGE&quot;"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringForStaff %>" ProviderName="<%$ ConnectionStrings:ConnectionStringForStaff.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;PACKAGE&quot;.P_ID, &quot;PACKAGE&quot;.P_NAME, &quot;PACKAGE&quot;.P_DESTINATION, &quot;PACKAGE&quot;.P_NUMBEROFDAYS, &quot;PACKAGE&quot;.P_DIFFICULTY, PACKAGE_DETAILS.P_ID , CUSTOMER.C_ID, CUSTOMER.NAME, CUSTOMER.ADDRESS, CUSTOMER.EMAIL, CUSTOMER.PHONE FROM &quot;PACKAGE&quot;, PACKAGE_DETAILS, CUSTOMER WHERE &quot;PACKAGE&quot;.P_ID = PACKAGE_DETAILS.P_ID AND PACKAGE_DETAILS.C_ID = CUSTOMER.C_ID AND (&quot;PACKAGE&quot;.P_ID = :P_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="P_ID" PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
</asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="P_ID,C_ID" DataSourceID="SqlDataSource1" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="P_ID" HeaderText="P_ID" ReadOnly="True" SortExpression="P_ID" />
            <asp:BoundField DataField="P_NAME" HeaderText="P_NAME" SortExpression="P_NAME" />
            <asp:BoundField DataField="P_DESTINATION" HeaderText="P_DESTINATION" SortExpression="P_DESTINATION" />
            <asp:BoundField DataField="P_NUMBEROFDAYS" HeaderText="P_NUMBEROFDAYS" SortExpression="P_NUMBEROFDAYS" />
            <asp:BoundField DataField="P_DIFFICULTY" HeaderText="P_DIFFICULTY" SortExpression="P_DIFFICULTY" />
            <asp:BoundField DataField="P_ID1" HeaderText="P_ID1" SortExpression="P_ID1" />
            <asp:BoundField DataField="C_ID" HeaderText="C_ID" ReadOnly="True" SortExpression="C_ID" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
        </Columns>
    </asp:GridView>
</asp:Content>
