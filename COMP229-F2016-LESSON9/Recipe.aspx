<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Recipe.aspx.cs" Inherits="COMP229_F2016_LESSON9.Recipe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<%--  Author: Hassan Kobeissi
    Student Number: 300847239
    Date Due: 2016-10-03 --%> 
<%-- This is the Recipe Page --%>
    <h1 class="Title"><%: Title %></h1>
    <p>Available Recipes Listed Below!</p>

    <!--Displays recipe after Add Recipe has been created-->
    <!-- SQl Tables created (Recipes & Ingrediants)-->

    <!--"ErrorExceptionDetails: System.ArgumentException: Unable to find the requested .Net Framework Data Provider.  It may not be installed."-->
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="RECIPEID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="RECIPEID" HeaderText="RECIPEID" ReadOnly="True" SortExpression="RECIPEID" />
            <asp:BoundField DataField="NAMEOFRECIPE" HeaderText="NAMEOFRECIPE" SortExpression="NAMEOFRECIPE" />
            <asp:BoundField DataField="SUBMITTEDBY" HeaderText="SUBMITTEDBY" SortExpression="SUBMITTEDBY" />
            <asp:BoundField DataField="CATEGORY" HeaderText="CATEGORY" SortExpression="CATEGORY" />
            <asp:BoundField DataField="COOKINGTIME" HeaderText="COOKINGTIME" SortExpression="COOKINGTIME" />
            <asp:BoundField DataField="NUMBEROFSERVINGS" HeaderText="NUMBEROFSERVINGS" SortExpression="NUMBEROFSERVINGS" />
            <asp:BoundField DataField="RECIPEDESCRIPTION" HeaderText="RECIPEDESCRIPTION" SortExpression="RECIPEDESCRIPTION" />
        </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString %>" SelectCommand="SELECT * FROM [Table]">

    </asp:SqlDataSource>
        
<br />
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="3px" CellPadding="10" CellSpacing="3">
       
        <Columns>
            <asp:HyperLinkField HeaderText="Show Recipe Details" NavigateUrl="~/RecipeDetails.aspx" Text="Details " />
        </Columns>
       
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />

    </asp:GridView>

  

</asp:Content>
