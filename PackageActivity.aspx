<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PackageActivity.aspx.cs" Inherits="WebAppByPratibhaMaam.PackageSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="P_NAME" DataValueField="P_ID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;P_ID&quot;, &quot;P_NAME&quot; FROM &quot;PACKAGE&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="ddPackage" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;P_ID&quot;, &quot;P_NAME&quot; FROM &quot;PACKAGE&quot;"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="P_ID,PD_ID,PS_ID1">
            <Columns>
                <asp:BoundField DataField="P_ID" HeaderText="P_ID" ReadOnly="True" SortExpression="P_ID" />
                <asp:BoundField DataField="P_NAME" HeaderText="P_NAME" SortExpression="P_NAME" />
                <asp:BoundField DataField="P_DESTINATION" HeaderText="P_DESTINATION" SortExpression="P_DESTINATION" />
                <asp:BoundField DataField="P_NUMBEROFDAYS" HeaderText="P_NUMBEROFDAYS" SortExpression="P_NUMBEROFDAYS" />
                <asp:BoundField DataField="P_DIFFICULTY" HeaderText="P_DIFFICULTY" SortExpression="P_DIFFICULTY" />
                <asp:BoundField DataField="PD_ID" HeaderText="PD_ID" ReadOnly="True" SortExpression="PD_ID" />
                <asp:BoundField DataField="C_ID" HeaderText="C_ID" SortExpression="C_ID" />
                <asp:BoundField DataField="A_ID" HeaderText="A_ID" SortExpression="A_ID" />
                <asp:BoundField DataField="PS_ID" HeaderText="PS_ID" SortExpression="PS_ID" />
                <asp:BoundField DataField="T_ID" HeaderText="T_ID" SortExpression="T_ID" />
                <asp:BoundField DataField="TG_ID" HeaderText="TG_ID" SortExpression="TG_ID" />
                <asp:BoundField DataField="DAY" HeaderText="DAY" SortExpression="DAY" />
                <asp:BoundField DataField="PD_DIFFICULTY" HeaderText="PD_DIFFICULTY" SortExpression="PD_DIFFICULTY" />
                <asp:BoundField DataField="PS_ID1" HeaderText="PS_ID1" ReadOnly="True" SortExpression="PS_ID1" />
                <asp:BoundField DataField="PS_STATUS" HeaderText="PS_STATUS" SortExpression="PS_STATUS" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT &quot;PACKAGE&quot;.P_ID, &quot;PACKAGE&quot;.P_NAME, &quot;PACKAGE&quot;.P_DESTINATION, &quot;PACKAGE&quot;.P_NUMBEROFDAYS, &quot;PACKAGE&quot;.P_DIFFICULTY, PACKAGE_DETAILS.PD_ID, PACKAGE_DETAILS.C_ID, PACKAGE_DETAILS.A_ID, PACKAGE_DETAILS.PS_ID, PACKAGE_DETAILS.T_ID, PACKAGE_DETAILS.TG_ID, PACKAGE_DETAILS.DAY, PACKAGE_DETAILS.PD_DIFFICULTY, PACKAGE_STATUS.PS_ID, PACKAGE_STATUS.PS_STATUS FROM ACTIVITY, PACKAGE_DETAILS, &quot;PACKAGE&quot;, PACKAGE_STATUS WHERE ACTIVITY.A_ID = PACKAGE_DETAILS.A_ID AND PACKAGE_DETAILS.P_ID = &quot;PACKAGE&quot;.P_ID AND PACKAGE_DETAILS.T_ID = PACKAGE_STATUS.T_ID AND (&quot;PACKAGE&quot;.P_ID = :P_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="P_ID" PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
