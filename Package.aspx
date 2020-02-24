<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Package.aspx.cs" Inherits="WebAppByPratibhaMaam.Package" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="labelPackageId" runat="server" Text="Package Id"></asp:Label>
    &nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbPackageId" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelPackageName" runat="server" Text="Package Name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbPackageName" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelPackageDestination" runat="server" Text="Destination"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbPackageDestination" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelPackageNumberOfDays" runat="server" Text="Number of Days"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbPackageNumberOfDays" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelPackageDifficulty" runat="server" Text="Difficulty"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbPackageDifficulty" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="BtnSave" runat="server" Text="Save" Height="39px" Width="262px" OnClick="BtnSave_Click" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" Height="121px" Width="947px" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="P_ID" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="P_ID" HeaderText="P_ID" ReadOnly="True" SortExpression="P_ID" />
            <asp:BoundField DataField="P_NAME" HeaderText="P_NAME" SortExpression="P_NAME" />
            <asp:BoundField DataField="P_DESTINATION" HeaderText="P_DESTINATION" SortExpression="P_DESTINATION" />
            <asp:BoundField DataField="P_NUMBEROFDAYS" HeaderText="P_NUMBEROFDAYS" SortExpression="P_NUMBEROFDAYS" />
            <asp:BoundField DataField="P_DIFFICULTY" HeaderText="P_DIFFICULTY" SortExpression="P_DIFFICULTY" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VisitNepal2020Connection %>" DeleteCommand="DELETE FROM &quot;PACKAGE&quot; WHERE &quot;P_ID&quot; = :original_P_ID AND &quot;P_NAME&quot; = :original_P_NAME AND &quot;P_DESTINATION&quot; = :original_P_DESTINATION AND &quot;P_NUMBEROFDAYS&quot; = :original_P_NUMBEROFDAYS AND &quot;P_DIFFICULTY&quot; = :original_P_DIFFICULTY" InsertCommand="INSERT INTO &quot;PACKAGE&quot; (&quot;P_ID&quot;, &quot;P_NAME&quot;, &quot;P_DESTINATION&quot;, &quot;P_NUMBEROFDAYS&quot;, &quot;P_DIFFICULTY&quot;) VALUES (:P_ID, :P_NAME, :P_DESTINATION, :P_NUMBEROFDAYS, :P_DIFFICULTY)" ProviderName="<%$ ConnectionStrings:VisitNepal2020Connection.ProviderName %>" SelectCommand="SELECT * FROM &quot;PACKAGE&quot;" UpdateCommand="UPDATE &quot;PACKAGE&quot; SET &quot;P_NAME&quot; = :P_NAME, &quot;P_DESTINATION&quot; = :P_DESTINATION, &quot;P_NUMBEROFDAYS&quot; = :P_NUMBEROFDAYS, &quot;P_DIFFICULTY&quot; = :P_DIFFICULTY WHERE &quot;P_ID&quot; = :original_P_ID AND &quot;P_NAME&quot; = :original_P_NAME AND &quot;P_DESTINATION&quot; = :original_P_DESTINATION AND &quot;P_NUMBEROFDAYS&quot; = :original_P_NUMBEROFDAYS AND &quot;P_DIFFICULTY&quot; = :original_P_DIFFICULTY" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_P_ID" Type="Decimal" />
            <asp:Parameter Name="original_P_NAME" Type="String" />
            <asp:Parameter Name="original_P_DESTINATION" Type="String" />
            <asp:Parameter Name="original_P_NUMBEROFDAYS" Type="Decimal" />
            <asp:Parameter Name="original_P_DIFFICULTY" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlId="tbPackageId" Name="P_ID"/>
            <asp:ControlParameter ControlId="tbPackageName" Name="P_NAME"/>
            <asp:ControlParameter ControlId="tbPackageDestination" Name="P_DESTINATION"/>
            <asp:ControlParameter ControlId="tbPackageNumberOfDays" Name="P_NUMBEROFDAYS"/>
            <asp:ControlParameter ControlId="tbPackageDifficulty" Name="P_DIFFICULTY"/>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="P_NAME" Type="String" />
            <asp:Parameter Name="P_DESTINATION" Type="String" />
            <asp:Parameter Name="P_NUMBEROFDAYS" Type="Decimal" />
            <asp:Parameter Name="P_DIFFICULTY" Type="String" />
            <asp:Parameter Name="original_P_ID" Type="Decimal" />
            <asp:Parameter Name="original_P_NAME" Type="String" />
            <asp:Parameter Name="original_P_DESTINATION" Type="String" />
            <asp:Parameter Name="original_P_NUMBEROFDAYS" Type="Decimal" />
            <asp:Parameter Name="original_P_DIFFICULTY" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    </asp:Content>
