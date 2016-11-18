<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Recipe.aspx.cs" Inherits="COMP229_F2016_LESSON9.Recipe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<%--  Author: Hassan Kobeissi
    Student Number: 300847239
    Date Due: 2016-10-03 --%> 
<%-- This is the Recipe Page --%>
    <h1 class="Title"><%: Title %></h1>
    <p>Available Recipes Listed Below!</p>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

</asp:Content>
