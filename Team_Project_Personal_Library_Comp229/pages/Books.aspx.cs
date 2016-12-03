using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Team_Project_Personal_Library_Comp229.pages
{
    public partial class aboutus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Book_title_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
        SqlConnection con = new SqlConnection("Data Source=BARINDER-PC.SQLEXPRESS;Initial Catalog=Comp229_TeamProject_PersonalLib;Integrated Security=True");
        static SqlDataReader dr;
        SqlCommand cmd;
          
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select * from BOOK_DETAILS ",con);
            dr = cmd.ExecuteReader();
            dr.Read();
            lblresult.Text=dr.ToString();



        }
    }
}