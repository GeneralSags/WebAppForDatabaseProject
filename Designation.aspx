<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Designation.aspx.cs" Inherits="WebAppByPratibhaMaam.Designation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="labelId" runat="server" Text="Designation Id"></asp:Label>
    &nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbDesignationId" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelDesignationName" runat="server" Text="Designation Name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbDesignationName" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelDesignationSalary" runat="server" Text="Designation Salary"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbDesignationSalary" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Save" Height="30px" Width="232px" OnClick="Button1_Click" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" Height="121px" Width="947px" AutoGenerateColumns="False" DataKeyNames="D_ID" DataSourceID="VisitNepal2020Designation" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="D_ID" HeaderText="D_ID" ReadOnly="True" SortExpression="D_ID" />
            <asp:BoundField DataField="D_NAME" HeaderText="D_NAME" SortExpression="D_NAME" />
            <asp:BoundField DataField="D_SALARY" HeaderText="D_SALARY" SortExpression="D_SALARY" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="VisitNepal2020Designation" runat="server" ConnectionString="<%$ ConnectionStrings:sesugnation %>" 
        InsertCommand="INSERT INTO &quot;DESIGNATION&quot; (&quot;D_ID&quot;, &quot;D_NAME&quot;, &quot;D_SALARY&quot;) VALUES (:D_ID, :D_NAME, :D_SALARY)" 
        ProviderName="<%$ ConnectionStrings:sesugnation.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;DESIGNATION&quot;" 
        DeleteCommand="DELETE FROM &quot;DESIGNATION&quot; WHERE &quot;D_ID&quot; = :original_D_ID AND &quot;D_NAME&quot; = :original_D_NAME AND &quot;D_SALARY&quot; = :original_D_SALARY" 
        UpdateCommand="UPDATE &quot;DESIGNATION&quot; SET &quot;D_NAME&quot; = :D_NAME, &quot;D_SALARY&quot; = :D_SALARY WHERE &quot;D_ID&quot; = :original_D_ID AND &quot;D_NAME&quot; = :original_D_NAME AND &quot;D_SALARY&quot; = :original_D_SALARY" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_D_ID" Type="Decimal" />
            <asp:Parameter Name="original_D_NAME" Type="String" />
            <asp:Parameter Name="original_D_SALARY" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="tbDesignationId" Name="D_ID"/>
            <asp:ControlParameter ControlID="tbDesignationName" Name="D_NAME"/>
            <asp:ControlParameter ControlID="tbDesignationSalary" Name="D_SALARY"/>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="D_NAME" Type="String"/>
            <asp:Parameter Name="D_SALARY" Type="Decimal" />
            <asp:Parameter Name="original_D_ID" Type="Decimal" />
            <asp:Parameter Name="original_D_NAME" Type="String" />
            <asp:Parameter Name="original_D_SALARY" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
