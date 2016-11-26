<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Team_Project_Personal_Library_Comp229.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            height: 28px;
        }
        .auto-style7 {
            text-align: center;
            width: 489px;
        }
        .auto-style8 {
            width: 464px;
        }
        .auto-style9 {
            height: 30px;
            width: 464px;
        }
    .auto-style10 {
        height: 30px;
        width: 249px;
        margin-left: 441px;
        margin-top: 4px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Login ID="Login1" runat="server" Height="188px" Width="674px">
    <LayoutTemplate>
        <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
            <tr>
                <td class="auto-style7"><td align ="center">
                    <table cellpadding="0">
                        <tr>
                            <td align="center" colspan="2">Log In</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="auto-style10">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="auto-style5">
                                <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color: Red;">
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" OnClick="LoginButton_Click" Text="Log In" ValidationGroup="Login1" Height="34px" Width="424px" />
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/pages/Register.aspx" Text="Register" />
                </td>
            </tr>
        </table>
    </LayoutTemplate>
</asp:Login>
</asp:Content>

