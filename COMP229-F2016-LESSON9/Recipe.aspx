<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Recipe.aspx.cs" Inherits="COMP229_F2016_LESSON9.Recipe" %>

<script runat="server">

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>

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
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="RECIPEID"   DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="RECIPEID" HeaderText="RECIPEID" ReadOnly="True" SortExpression="RECIPEID" />
            <asp:BoundField DataField="NAMEOFRECIPE" HeaderText="NAMEOFRECIPE" SortExpression="NAMEOFRECIPE" />
            <asp:BoundField DataField="SUBMITTEDBY" HeaderText="SUBMITTEDBY" ReadOnly="true" SortExpression="SUBMITTEDBY" />
            <asp:BoundField DataField="CATEGORY" HeaderText="CATEGORY" SortExpression="CATEGORY" />
            <asp:BoundField DataField="COOKINGTIME" HeaderText="COOKINGTIME" SortExpression="COOKINGTIME" />
            <asp:BoundField DataField="NUMBEROFSERVINGS" HeaderText="NUMBEROFSERVINGS" SortExpression="NUMBEROFSERVINGS" />
            <asp:BoundField DataField="RECIPEDESCRIPTION" HeaderText="RECIPEDESCRIPTION" SortExpression="RECIPEDESCRIPTION" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="ShowInfoButton" runat="server" CausesValidation="false" CommandName="gatWithRecipeDetails" Text="ShowInfo" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="true" />
            <asp:CommandField ShowEditButton="true" />
        </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString %>" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [NAMEOFRECIPE] = @NAMEOFRECIPE, [CATEGORY] = @CATEGORY, [COOKINGTIME] = @COOKINGTIME , [NUMBEROFSERVINGS]=@NUMBEROFSERVINGS , [RECIPEDESCRIPTION]=@RECIPEDESCRIPTION WHERE [RecipeID] = @RecipeID" DeleteCommand="DELETE FROM [Table] WHERE [RecipeID] = @RecipeID">
       <UpdateParameters>
                            <asp:Parameter Name="RecipeID" Type="Int32" />
                            <asp:Parameter Name="Nameofrecipe" Type="String" />
                           
                            <asp:Parameter Name="Category" Type="String" />
                            <asp:Parameter Name="CookingTime" Type="String" />
                            <asp:Parameter Name="NumberOfServing" Type="String" />
                        </UpdateParameters>
         <DeleteParameters>
                            <asp:Parameter Name="RecipeID" Type="Int32" />
                        </DeleteParameters>
    </asp:SqlDataSource>
        
<asp:GridView ID="RecipeGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="RECIPEID" DataSourceID="RecipeDB">
    <Columns>
        <asp:BoundField DataField="RECIPEID" HeaderText="RECIPEID" InsertVisible="False" ReadOnly="True" SortExpression="RECIPEID" />
        <asp:BoundField DataField="NAMEOFRECIPE" HeaderText="NAMEOFRECIPE" SortExpression="NAMEOFRECIPE" />
        <asp:BoundField DataField="SUBMITTEDBY" HeaderText="SUBMITTEDBY" SortExpression="SUBMITTEDBY" />
        <asp:BoundField DataField="CATEGORY" HeaderText="CATEGORY" SortExpression="CATEGORY" />
        <asp:BoundField DataField="COOKINGTIME" HeaderText="COOKINGTIME" SortExpression="COOKINGTIME" />
        <asp:BoundField DataField="NUMBEROFSERVINGS" HeaderText="NUMBEROFSERVINGS" SortExpression="NUMBEROFSERVINGS" />
        <asp:BoundField DataField="RECIPEDESCRIPTION" HeaderText="RECIPEDESCRIPTION" SortExpression="RECIPEDESCRIPTION" />
        <asp:CommandField ShowEditButton="True" />
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="RecipeDB" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString %>" SelectCommand="SELECT * FROM [Recipe]"></asp:SqlDataSource>
        
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
