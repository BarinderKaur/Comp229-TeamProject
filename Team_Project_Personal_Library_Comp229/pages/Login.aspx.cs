using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void log_Click(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = ConfigurationManager.ConnectionStrings["myDbConnectionString1"].ToString();

        sds.SelectParameters.Add("username", TypeCode.String, this.username.Text);
        sds.SelectParameters.Add("password", TypeCode.String, this.password.Text);

        sds.SelectCommand = "SELECT * FROM [myTb] WHERE [username] = @username AND [password] = @password";

        DataView dv = (DataView)sds.Select(DataSourceSelectArguments.Empty);
        try
        {
            if (dv.Count == 0)
            {
                this.lblinfo.ForeColor = System.Drawing.Color.Red;
                this.lblinfo.Text = "Invalid username and password!";
                return;
            }
            else
            {
                // Creating session for user
                //this.Session["username"] = dv[0].Row["username"].ToString();
                //System.Web.SessionState(username) = username.Text;
                //system.web.Session(username) = username.Text;
                //Session["User"] = UserName.Text;
                //Session["username"] = username.Text;
                FormsAuthentication.RedirectFromLoginPage(username.Text, true);
                Response.Redirect("securepage/BooksSecurePage.aspx");
            }
        }
        catch
        {

        }
        finally
        {
        
        }
    }
}