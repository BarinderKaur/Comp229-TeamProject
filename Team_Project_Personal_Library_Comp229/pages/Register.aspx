<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Team_Project_Personal_Library_Comp229.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        text-align: right;
        height: 25px;
    }
    .auto-style8 {
        height: 25px;
            text-align: left;
        }
    .auto-style9 {
        text-align: right;
        height: 26px;
    }
    .auto-style10 {
        height: 26px;
            text-align: left;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    </p>
    <div class="auto-style2">

        <table class="auto-style1">
            <tr>
                <td class="auto-style7">First Name</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Last Name</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Phone No</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Email id</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    &nbsp;<asp:Button ID="Button1" runat="server" Text="Register" />

    </div>
</asp:Content>
