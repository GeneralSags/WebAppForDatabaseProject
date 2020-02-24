<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="WebAppByPratibhaMaam.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="labelCustomerId" runat="server" Text="Customer Id"></asp:Label>
    &nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbCustomerId" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelCustomerName" runat="server" Text="Customer Name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbCustomerName" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelCustomerAddress" runat="server" Text="Customer Address"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tbCustomerAddress" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelCustomerEmail" runat="server" Text="Customer Email"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbCustomerEmail" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelCustomerPhone" runat="server" Text="Customer Phone"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbCustomerPhone" runat="server"></asp:TextBox>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Save" Height="39px" Width="262px" OnClick="insertData" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" Height="121px" Width="947px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="VisitNepal2020" DataKeyNames="C_ID">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="C_ID" HeaderText="C_ID" SortExpression="C_ID" ReadOnly="True" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="VisitNepal2020" runat="server" ConnectionString="<%$ ConnectionStrings:VisitNepal2020Connection %>" DeleteCommand="DELETE FROM &quot;CUSTOMER&quot; WHERE &quot;C_ID&quot; = :original_C_ID AND ((&quot;NAME&quot; = :original_NAME) OR (&quot;NAME&quot; IS NULL AND :original_NAME IS NULL)) AND ((&quot;ADDRESS&quot; = :original_ADDRESS) OR (&quot;ADDRESS&quot; IS NULL AND :original_ADDRESS IS NULL)) AND ((&quot;EMAIL&quot; = :original_EMAIL) OR (&quot;EMAIL&quot; IS NULL AND :original_EMAIL IS NULL)) AND ((&quot;PHONE&quot; = :original_PHONE) OR (&quot;PHONE&quot; IS NULL AND :original_PHONE IS NULL))" InsertCommand="INSERT INTO &quot;CUSTOMER&quot; (&quot;C_ID&quot;, &quot;NAME&quot;, &quot;ADDRESS&quot;, &quot;EMAIL&quot;, &quot;PHONE&quot;) VALUES (:C_ID, :NAME, :ADDRESS, :EMAIL, :PHONE)" ProviderName="<%$ ConnectionStrings:VisitNepal2020Connection.ProviderName %>" SelectCommand="SELECT * FROM &quot;CUSTOMER&quot;" UpdateCommand="UPDATE &quot;CUSTOMER&quot; SET &quot;NAME&quot; = :NAME, &quot;ADDRESS&quot; = :ADDRESS, &quot;EMAIL&quot; = :EMAIL, &quot;PHONE&quot; = :PHONE WHERE &quot;C_ID&quot; = :original_C_ID AND ((&quot;NAME&quot; = :original_NAME) OR (&quot;NAME&quot; IS NULL AND :original_NAME IS NULL)) AND ((&quot;ADDRESS&quot; = :original_ADDRESS) OR (&quot;ADDRESS&quot; IS NULL AND :original_ADDRESS IS NULL)) AND ((&quot;EMAIL&quot; = :original_EMAIL) OR (&quot;EMAIL&quot; IS NULL AND :original_EMAIL IS NULL)) AND ((&quot;PHONE&quot; = :original_PHONE) OR (&quot;PHONE&quot; IS NULL AND :original_PHONE IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_C_ID" Type="Decimal" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_ADDRESS" Type="String" />
            <asp:Parameter Name="original_EMAIL" Type="String" />
            <asp:Parameter Name="original_PHONE" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter Name="C_ID" ControlID="tbCustomerID"/>
            <asp:ControlParameter Name="NAME" ControlID="tbCustomerName"/>
            <asp:ControlParameter Name="ADDRESS" ControlID="tbCustomerAddress"/>
            <asp:ControlParameter Name="EMAIL" ControlID="tbCustomerEmail"/>
            <asp:ControlParameter Name="PHONE" ControlID="tbCustomerPhone"/>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="ADDRESS" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="PHONE" Type="String" />
            <asp:Parameter Name="original_C_ID" Type="Decimal" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_ADDRESS" Type="String" />
            <asp:Parameter Name="original_EMAIL" Type="String" />
            <asp:Parameter Name="original_PHONE" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
