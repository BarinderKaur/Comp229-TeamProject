<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1Master.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="Team_Project_Personal_Library_Comp229.pages.aboutus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        margin-left: 276px;
        margin-right: 48px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style8" DataKeyNames="Book ISBN" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Author Name" HeaderText="Author Name" SortExpression="Author Name" />
        <asp:BoundField DataField="Title of Book" HeaderText="Title of Book" SortExpression="Title of Book" />
        <asp:BoundField DataField="Year published" HeaderText="Year published" SortExpression="Year published" />
        <asp:BoundField DataField="Review/Rating" HeaderText="Review/Rating" SortExpression="Review/Rating" />
        <asp:BoundField DataField="Book ISBN" HeaderText="Book ISBN" ReadOnly="True" SortExpression="Book ISBN" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229_TeamProject_PersonalLibConnectionString %>" SelectCommand="SELECT * FROM [BOOK_DETAILS]"></asp:SqlDataSource>
</asp:Content> 


