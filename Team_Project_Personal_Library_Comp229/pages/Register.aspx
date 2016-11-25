<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Team_Project_Personal_Library_Comp229.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    </p>
    <div>

        <table class="auto-style1">
            <tr>
                <td>First Name</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Phone No</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Email id</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
    <div class="auto-style2">

        <asp:Button ID="Button1" runat="server" Text="Register" />

    </div>
</asp:Content>
