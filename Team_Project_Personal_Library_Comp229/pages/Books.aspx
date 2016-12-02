<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1Master.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="Team_Project_Personal_Library_Comp229.pages.aboutus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        margin-left: 276px;
        margin-right: 48px;
    }
        .auto-style10 {
            width: 203px;
            height: 271px;
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style11 {
            width: 168px;
            height: 273px;
            margin-left: 3px;
        }
        .auto-style12 {
            width: 209px;
            height: 271px;
            margin-left: 3px;
            margin-right: 0px;
            margin-top: 0px;
        }
        .auto-style13 {
            width: 207px;
            height: 268px;
            margin-left: 6px;
        }
        .auto-style14 {
            width: 196px;
            height: 269px;
            margin-left: 0px;
        }
        .auto-style15 {
            width: 201px;
            text-align: center;
        }
        .auto-style18 {
            width: 218px;
            text-align: center;
        }
        .auto-style20 {
            width: 139px;
            text-align: center;
        }
        .auto-style21 {
            width: 226px;
            text-align: center;
        }
        .auto-style22 {
            text-align: center;
            font-family: Algerian;
            color: #CC0099;
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

</asp:GridView><br />
    <br /><br />
    <div> 
        <img alt="" class="auto-style10" src="../Assets/The_aura_img.jpg" /><img alt="" class="auto-style11" src="../Assets/the%20equity.jpg" /><img alt="" class="auto-style12" src="../Assets/life%20and%20rules.jpg" /><img alt="" class="auto-style13" src="../Assets/how_we%20met.jpg" /><img alt="" class="auto-style14" src="../Assets/lifeof%20akid.jpg" /><br />
        <br />
        <br /><br />

       <div>

           <table class="auto-style1">
               <tr>
                   <td class="auto-style15" style="font-family: Algerian; color: #CC0099">
                       <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/pages/THE AURA.aspx" ToolTip="ABOUT THE BOOK">THE AURA</asp:HyperLink>
                   </td>
                   <td class="auto-style20" style="font-family: Algerian; color: #CC0099">
                       <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/pages/THE EQUITY.aspx">THE EQUITY</asp:HyperLink>
                   </td>
                   <td class="auto-style18" style="font-family: Algerian; color: #CC0099">
                       <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White" NavigateUrl="~/pages/LIFE AND RULES.aspx">LIFE AND RULES</asp:HyperLink>
                   </td>
                   <td class="auto-style21" style="font-family: Algerian; color: #CC0099">
                       <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White">HOW WE MET</asp:HyperLink>
                   </td>
                   <td class="auto-style22">&nbsp;</td>
               </tr>
           </table>

       </div>
    </div>

          
        <br /><br />
          
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229_TeamProject_PersonalLibConnectionString %>" SelectCommand="SELECT * FROM [BOOK_DETAILS]"></asp:SqlDataSource>
</asp:Content> 

               

