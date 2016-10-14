<%--  Author: Hassan Kobeissi
    Student Number: 300847239
    Date Due: 2016-10-03 --%> 
<%@ Page Title="Add Recipes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddRecipe.aspx.cs" Inherits="COMP229_F2016_LESSON9.AddRecipe" %>
<%@ Register TagPrefix="uc" TagName="IngrediantsList" Src="~/IngrediantsList.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- Add Recipes Page --%>
     <h1>Add your own custom recipes here!</h1>
    <p>
    Name of Recipe: &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="RecipeTxtBox" runat="server"/><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mandatory!" ControlToValidate="RecipeTxtBox" Display="Dynamic" ForeColor="Red"/>
    </p>
    <p>
    Submitted By: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="SubmittedByTxtbox" runat="server"/><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mandatory!" ControlToValidate="SubmittedByTxtBox" Display="Dynamic" ForeColor="Red"/><br />
    </p>
    <p>
    Category: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="CategoryTxtBox" runat="server"/><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mandatory!" ControlToValidate="CategoryTxtBox" Display="Dynamic" ForeColor="Red"/><br/>
    </p>
    <p>Cooking Time:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="CookingTimeTxtBox" runat="server"/><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mandatory!" ControlToValidate="CookingTimeTxtBox" Display="Dynamic" ForeColor="Red"/><br />
    </p>
    <p>Number Of Servings:&nbsp;<asp:TextBox ID="NumberOfServingsTxtBox" runat="server"/><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mandatory!" ControlToValidate="NumberOfServingsTxtBox" Display="Dynamic" ForeColor="Red"/><br />
    </p>
    <p>Recipe Description:&nbsp;&nbsp;<asp:TextBox ID="RecipeDescriptionTxtBox" runat="server"/><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Mandatory!" ControlToValidate="RecipeDescriptionTxtBox" Display="Dynamic" ForeColor="Red"/><br />
    </p>
        
        <h4>Name of Ingrediant&nbsp;&nbsp;&nbsp;Quantity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Unit(kg,g,l)</h4>
    <uc:IngrediantsList ID="Ingrediant1" runat="server"/><br>
    <p>Ingrediant One</p>
    <uc:IngrediantsList ID="Ingrediant2" runat="server"/><br>
    <p>Ingrediant Two</p>        
    <uc:IngrediantsList ID="Ingrediant3" runat="server"/><br>
    <p>Ingrediant Three</p>
    <uc:IngrediantsList ID="Ingrediant4" runat="server"/><br>
     <p>Ingrediant Four</p>
    <uc:IngrediantsList ID="Ingrediant5" runat="server"/><br>
     <p>Ingrediant Five</p>
    <uc:IngrediantsList ID="Ingrediant6" runat="server"/><br>
     <p>Ingrediant Six</p>
    <uc:IngrediantsList ID="Ingrediant7" runat="server"/><br>
     <p>Ingrediant Seven</p>
    <uc:IngrediantsList ID="Ingrediant8" runat="server"/><br>
     <p>Ingrediant Eight</p>
    <uc:IngrediantsList ID="Ingrediant9" runat="server"/><br>
     <p>Ingrediant Nine</p>
    <uc:IngrediantsList ID="Ingrediant10" runat="server"/><br>
     <p>Ingrediant Ten</p>
    <uc:IngrediantsList ID="Ingrediant11" runat="server"/><br>
     <p>Ingrediant Eleven</p>
    <uc:IngrediantsList ID="Ingrediant12" runat="server"/><br>
     <p>Ingrediant Twelve</p>
    <uc:IngrediantsList ID="Ingrediant13" runat="server"/><br>
   
    <br />  
     
   <asp:button runat="server" Text="Submit" BackColor="lightblue" ForeColor="black" ID="btnSubmit" OnClick="btnSubmit_Click" />
   &nbsp
   <asp:button runat="server" Text="Cancel" BackColor="lightblue" ForeColor="black" ID="Cancel" OnClick="btnCancel_Click" UseSubmitBehavior="False" />
   
   


</asp:Content>
