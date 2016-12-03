<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BooksSecurePage.aspx.cs" Inherits="SecurePage" Title="Books Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 863px; height: 100px; text-align: center">
        <br />
        <br />
        <strong><span style="font-size: 15pt; ">
            <br />
            The Books Currently Available in Library.!!
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
            <br />
            <hr/>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" /><br />
            <br />
            <br />
            <br />
            <br />
        </span></strong></div>
</asp:Content>

