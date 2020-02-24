<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TourGuide.aspx.cs" Inherits="WebAppByPratibhaMaam.TourGuide" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--<br />
    <asp:Label ID="labelTourGuideId" runat="server" Text="TourGuide Id"></asp:Label>
    &nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbTourGuideId" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelTourGuideName" runat="server" Text="TourGuide Name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbTourGuideName" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelTourGuideAddress" runat="server" Text="TourGuide Address"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tbTourGuideAddress" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelTourGuideEmail" runat="server" Text="TourGuide Email"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbTourGuideEmail" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelTourGuidePhone" runat="server" Text="TourGuide Phone"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbTourGuidePhone" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Save" Height="39px" Width="262px" />
    <br />
    <br />-->
    <asp:GridView ID="GridView1" runat="server" Height="121px" Width="947px" AutoGenerateColumns="False" DataSourceID="VisitNepal2020TourGuide" DataKeyNames="TG_ID" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="TG_ID" HeaderText="TG_ID" ReadOnly="True" SortExpression="TG_ID" />
            <asp:BoundField DataField="S_ID" HeaderText="S_ID" SortExpression="S_ID" />
            <asp:BoundField DataField="TG_LICENSENUMBER" HeaderText="TG_LICENSENUMBER" SortExpression="TG_LICENSENUMBER" />
            <asp:BoundField DataField="TG_ISSUEDATE" HeaderText="TG_ISSUEDATE" SortExpression="TG_ISSUEDATE" />
            <asp:BoundField DataField="TG_EXPIREDATE" HeaderText="TG_EXPIREDATE" SortExpression="TG_EXPIREDATE" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="VisitNepal2020TourGuide" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VisitNepal2020Connection %>" DeleteCommand="DELETE FROM &quot;TOURGUIDE&quot; WHERE &quot;TG_ID&quot; = :original_TG_ID AND ((&quot;S_ID&quot; = :original_S_ID) OR (&quot;S_ID&quot; IS NULL AND :original_S_ID IS NULL)) AND ((&quot;TG_LICENSENUMBER&quot; = :original_TG_LICENSENUMBER) OR (&quot;TG_LICENSENUMBER&quot; IS NULL AND :original_TG_LICENSENUMBER IS NULL)) AND ((&quot;TG_ISSUEDATE&quot; = :original_TG_ISSUEDATE) OR (&quot;TG_ISSUEDATE&quot; IS NULL AND :original_TG_ISSUEDATE IS NULL)) AND ((&quot;TG_EXPIREDATE&quot; = :original_TG_EXPIREDATE) OR (&quot;TG_EXPIREDATE&quot; IS NULL AND :original_TG_EXPIREDATE IS NULL))" InsertCommand="INSERT INTO &quot;TOURGUIDE&quot; (&quot;TG_ID&quot;, &quot;S_ID&quot;, &quot;TG_LICENSENUMBER&quot;, &quot;TG_ISSUEDATE&quot;, &quot;TG_EXPIREDATE&quot;) VALUES (:TG_ID, :S_ID, :TG_LICENSENUMBER, :TG_ISSUEDATE, :TG_EXPIREDATE)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VisitNepal2020Connection.ProviderName %>" SelectCommand="SELECT * FROM &quot;TOURGUIDE&quot;" UpdateCommand="UPDATE &quot;TOURGUIDE&quot; SET &quot;S_ID&quot; = :S_ID, &quot;TG_LICENSENUMBER&quot; = :TG_LICENSENUMBER, &quot;TG_ISSUEDATE&quot; = :TG_ISSUEDATE, &quot;TG_EXPIREDATE&quot; = :TG_EXPIREDATE WHERE &quot;TG_ID&quot; = :original_TG_ID AND ((&quot;S_ID&quot; = :original_S_ID) OR (&quot;S_ID&quot; IS NULL AND :original_S_ID IS NULL)) AND ((&quot;TG_LICENSENUMBER&quot; = :original_TG_LICENSENUMBER) OR (&quot;TG_LICENSENUMBER&quot; IS NULL AND :original_TG_LICENSENUMBER IS NULL)) AND ((&quot;TG_ISSUEDATE&quot; = :original_TG_ISSUEDATE) OR (&quot;TG_ISSUEDATE&quot; IS NULL AND :original_TG_ISSUEDATE IS NULL)) AND ((&quot;TG_EXPIREDATE&quot; = :original_TG_EXPIREDATE) OR (&quot;TG_EXPIREDATE&quot; IS NULL AND :original_TG_EXPIREDATE IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_TG_ID" Type="Decimal" />
            <asp:Parameter Name="original_S_ID" Type="Decimal" />
            <asp:Parameter Name="original_TG_LICENSENUMBER" Type="Decimal" />
            <asp:Parameter Name="original_TG_ISSUEDATE" Type="DateTime" />
            <asp:Parameter Name="original_TG_EXPIREDATE" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TG_ID" Type="Decimal" />
            <asp:Parameter Name="S_ID" Type="Decimal" />
            <asp:Parameter Name="TG_LICENSENUMBER" Type="Decimal" />
            <asp:Parameter Name="TG_ISSUEDATE" Type="DateTime" />
            <asp:Parameter Name="TG_EXPIREDATE" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="S_ID" Type="Decimal" />
            <asp:Parameter Name="TG_LICENSENUMBER" Type="Decimal" />
            <asp:Parameter Name="TG_ISSUEDATE" Type="DateTime" />
            <asp:Parameter Name="TG_EXPIREDATE" Type="DateTime" />
            <asp:Parameter Name="original_TG_ID" Type="Decimal" />
            <asp:Parameter Name="original_S_ID" Type="Decimal" />
            <asp:Parameter Name="original_TG_LICENSENUMBER" Type="Decimal" />
            <asp:Parameter Name="original_TG_ISSUEDATE" Type="DateTime" />
            <asp:Parameter Name="original_TG_EXPIREDATE" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TOURGUIDE&quot;"></asp:SqlDataSource>
</asp:Content>
