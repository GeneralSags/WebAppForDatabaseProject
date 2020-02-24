<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="WebAppByPratibhaMaam.Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="labelStaffId" runat="server" Text="Staff Id"></asp:Label>
    &nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbStaffId" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelStaffName" runat="server" Text="Staff Name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbStaffName" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelStaffDesignation" runat="server" Text="Staff Designation"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddStaffDesignationId" runat="server" DataSourceID="ddDesignationId" DataTextField="D_NAME" DataValueField="D_ID" Height="33px" Width="124px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="ddDesignationId" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringForStaff %>" ProviderName="<%$ ConnectionStrings:ConnectionStringForStaff.ProviderName %>" SelectCommand="SELECT &quot;D_ID&quot;, &quot;D_NAME&quot; FROM &quot;DESIGNATION&quot;"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="labelStaffEmail" runat="server" Text="Staff Email"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbStaffEmail" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelStaffPhone" runat="server" Text="Staff Phone"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbStaffPhone" runat="server" OnTextChanged="tbStaffPhone_TextChanged"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Save" Height="40px" Width="266px" OnClick="Button1_Click" /><br />
    <br />
    <asp:GridView ID="GridView1" runat="server" Height="121px" Width="947px" AutoGenerateColumns="False" DataKeyNames="S_ID" DataSourceID="VisitNepal2020" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="S_ID" HeaderText="S_ID" ReadOnly="True" SortExpression="S_ID" />
            <asp:BoundField DataField="S_NAME" HeaderText="S_NAME" SortExpression="S_NAME" />
            <asp:BoundField DataField="D_ID" HeaderText="D_ID" SortExpression="D_ID" />
            <asp:BoundField DataField="S_EMAIL" HeaderText="S_EMAIL" SortExpression="S_EMAIL" />
            <asp:BoundField DataField="S_PHONE" HeaderText="S_PHONE" SortExpression="S_PHONE" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="VisitNepal2020" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringForStaff %>" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;S_ID&quot;, &quot;S_NAME&quot;, &quot;D_ID&quot;, &quot;S_EMAIL&quot;, &quot;S_PHONE&quot;) VALUES (:S_ID, :S_NAME, :D_ID, :S_EMAIL, :S_PHONE)" ProviderName="<%$ ConnectionStrings:ConnectionStringForStaff.ProviderName %>" SelectCommand="SELECT * FROM &quot;STAFF&quot;" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;S_ID&quot; = :original_S_ID AND &quot;S_NAME&quot; = :original_S_NAME AND &quot;D_ID&quot; = :original_D_ID AND &quot;S_EMAIL&quot; = :original_S_EMAIL AND &quot;S_PHONE&quot; = :original_S_PHONE" 
        UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;S_NAME&quot; = :S_NAME, &quot;D_ID&quot; = :D_ID, &quot;S_EMAIL&quot; = :S_EMAIL, &quot;S_PHONE&quot; = :S_PHONE WHERE &quot;S_ID&quot; = :original_S_ID AND &quot;S_NAME&quot; = :original_S_NAME AND &quot;D_ID&quot; = :original_D_ID AND &quot;S_EMAIL&quot; = :original_S_EMAIL AND &quot;S_PHONE&quot; = :original_S_PHONE" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_S_ID" Type="Decimal" />
            <asp:Parameter Name="original_S_NAME" Type="String" />
            <asp:Parameter Name="original_D_ID" Type="Decimal" />
            <asp:Parameter Name="original_S_EMAIL" Type="String" />
            <asp:Parameter Name="original_S_PHONE" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="tbStaffId" Name="S_ID"/>
            <asp:ControlParameter ControlID="tbStaffName" Name="S_NAME"/>
            <asp:ControlParameter ControlID="ddStaffDesignationId" Name="D_ID"/>
            <asp:ControlParameter ControlID="tbStaffEmail" Name="S_EMAIL"/>
            <asp:ControlParameter ControlID="tbStaffPhone" Name="S_PHONE"/>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="S_NAME" Type="String"/>
            <asp:Parameter Name="D_ID" Type="Decimal"/>
            <asp:Parameter Name="S_EMAIL" Type="String"/>
            <asp:Parameter Name="S_PHONE" Type="String"/>
            <asp:Parameter Name="original_S_ID" Type="Decimal"/>
            <asp:Parameter Name="original_S_NAME" Type="String" />
            <asp:Parameter Name="original_D_ID" Type="Decimal" />
            <asp:Parameter Name="original_S_EMAIL" Type="String" />
            <asp:Parameter Name="original_S_PHONE" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
