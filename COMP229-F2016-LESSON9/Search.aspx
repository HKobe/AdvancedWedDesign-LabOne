<%--  Author: Hassan Kobeissi
    Student Number: 300847239
    --%> 
<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="COMP229_F2016_LESSON9.Search" %>
<%-- This is my Search Page --%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h1>Search for the recipes you desire</h1>
  
    <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
   

    
     <!--Drop DownLists with Default Text "All"-->
   
     <!--Submitted By DropDown-->
    <asp:DropDownList ID="DDLSub" runat="server" DataSourceID="SqlDataSource2" DataTextField="SUBMITTEDBY" DataValueField="CATEGORY" OnDataBound="DDLSub_DataBound">
        <asp:ListItem Text="All"></asp:ListItem>  
        <asp:ListItem Text="Submitted By"></asp:ListItem>
    </asp:DropDownList>
    
    
    
    
    <!--Category DropDown -->

       
     <!--Name DropDown -->
        <asp:DropDownList ID="DDLName" runat="server" DataSourceID="SqlDataSource2" DataTextField="NAMEOFRECIPE" DataValueField="NAMEOFRECIPE" OnSelectedIndexChanged="DDLName_SelectedIndexChanged" AppendDataBoundItems="true" OnDataBound="DDLName_DataBound">
    </asp:DropDownList>

    <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit" /><br />
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
    <asp:GridView runat="server" ID="SearchResultGridView" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2" >
            <Columns>
             <asp:BoundField Visible="False" />
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
