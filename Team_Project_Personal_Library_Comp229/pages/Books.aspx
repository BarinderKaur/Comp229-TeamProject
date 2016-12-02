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
            margin-left: 117px;
        }
        .auto-style12 {
            width: 209px;
            height: 271px;
            margin-left: 53px;
            margin-right: 0px;
            margin-top: 0px;
        }
        .auto-style13 {
            width: 207px;
            height: 268px;
            margin-left: 69px;
        }
        .auto-style14 {
            width: 196px;
            height: 269px;
            margin-left: 65px;
        }
        .auto-style15 {
            width: 226px;
            text-align: center;
        }
        .auto-style16 {
            width: 285px;
            text-align: center;
        }
        .auto-style17 {
            width: 259px;
            text-align: center;
        }
        .auto-style18 {
            width: 277px;
            text-align: center;
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
                   <td class="auto-style15">THE AURA</td>
                   <td class="auto-style16">THE EQUITY</td>
                   <td class="auto-style17">LIFE AND RULES</td>
                   <td class="auto-style18">HOW WE MET</td>
                   <td class="auto-style2">LIFE OF A KID</td>
               </tr>
           </table>

       </div>
    </div>

          
        <br /><br />
          
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229_TeamProject_PersonalLibConnectionString %>" SelectCommand="SELECT * FROM [BOOK_DETAILS]"></asp:SqlDataSource>
</asp:Content> 

               

