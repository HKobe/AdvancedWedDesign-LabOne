<%--  Author: Hassan Kobeissi
    Student Number: 300847239
    Date Due: 2016-10-03 --%> 
<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="COMP229_F2016_LESSON9.Search" %>
<%-- This is my Search Page --%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Search for the recipes you desire</h1>

     <asp:DropDownList  ID="DDLSub"runat="server"> 
        <asp:ListItem Text="All"></asp:ListItem>  
        <asp:ListItem Text="Submitted By"></asp:ListItem>
    </asp:DropDownList>



        <asp:DropDownList ID="DDLCat"runat="server"> 
        <asp:ListItem Text="All" ></asp:ListItem> 
            <asp:ListItem Text="Category"></asp:ListItem>
                </asp:DropDownList>


    <asp:DropDownList ID="DDLName" runat="server">
        <asp:ListItem Text="All"></asp:ListItem>
        <asp:ListItem Text="Name"></asp:ListItem>
    </asp:DropDownList>

</asp:Content>
