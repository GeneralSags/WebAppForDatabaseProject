<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffRole.aspx.cs" Inherits="WebAppByPratibhaMaam.StaffRole" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="D_NAME" DataValueField="D_ID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringForStaff %>" ProviderName="<%$ ConnectionStrings:ConnectionStringForStaff.ProviderName %>" SelectCommand="SELECT &quot;D_ID&quot;, &quot;D_NAME&quot; FROM &quot;DESIGNATION&quot;"></asp:SqlDataSource>
    <asp:SqlDataSource ID="VisitNepalRoleSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STAFF&quot; WHERE (&quot;D_ID&quot; = :D_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="D_ID" PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="S_ID" DataSourceID="SqlDataSource1" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="S_ID" HeaderText="S_ID" ReadOnly="True" SortExpression="S_ID" />
            <asp:BoundField DataField="S_NAME" HeaderText="S_NAME" SortExpression="S_NAME" />
            <asp:BoundField DataField="D_ID" HeaderText="D_ID" SortExpression="D_ID" />
            <asp:BoundField DataField="S_EMAIL" HeaderText="S_EMAIL" SortExpression="S_EMAIL" />
            <asp:BoundField DataField="S_PHONE" HeaderText="S_PHONE" SortExpression="S_PHONE" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;STAFF&quot; WHERE (&quot;D_ID&quot; = :D_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="D_ID" PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
