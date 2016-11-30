﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup ="true" CodeBehind="RecipeDetails.aspx.cs" Inherits="COMP229_F2016_LESSON9.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <!--Delete Button to remove data from data store-->
    <asp:label runat="server" ID="lblResult">   </asp:label>
<asp:Button runat="server" ID="btnDelete" Text="Delete"/>

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="RECIPEID" DataSourceID="SqlDataSource1" OnRowUpdating="GridView2_RowUpdating">
        <Columns>
            <asp:BoundField DataField="RECIPEID" HeaderText="RECIPEID" ReadOnly="True" SortExpression="RECIPEID" />
            <asp:BoundField DataField="NAMEOFRECIPE" HeaderText="NAMEOFRECIPE" SortExpression="NAMEOFRECIPE" />
            <asp:BoundField DataField="SUBMITTEDBY" HeaderText="SUBMITTEDBY" ReadOnly="True" SortExpression="SUBMITTEDBY" />
            <asp:BoundField DataField="CATEGORY" HeaderText="CATEGORY" SortExpression="CATEGORY" />
            <asp:BoundField DataField="COOKINGTIME" HeaderText="COOKINGTIME" SortExpression="COOKINGTIME" />
            <asp:BoundField DataField="NUMBEROFSERVINGS" HeaderText="NUMBEROFSERVINGS" SortExpression="NUMBEROFSERVINGS" />
            <asp:BoundField DataField="RECIPEDESCRIPTION" HeaderText="RECIPEDESCRIPTION" SortExpression="RECIPEDESCRIPTION" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>

</asp:Content>
