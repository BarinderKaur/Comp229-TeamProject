using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.ComponentModel;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class CreateUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string GetConnectionString()
    {
        //we will set up the configuration which will call our 
        //web.config file to provide the database details because 
        //in configuration file we have created the <connectionStrings>
        //in the process we draged and droped. It creates automatically.
        //We normally put the database details in web.config file or
        //machine.config file because it is very sensitive information
        //usually there IP address of remote database, passwords and
        //user names are stored.

        return System.Configuration.ConfigurationManager.ConnectionStrings["myDbConnectionString1"].ConnectionString;
        //in above line "onlineapplicationformConnectionString1" is 
        //our configuration name which is inside the web.config file.
    }


    //declaring function to insert the value

    private void execution(string name, string username, string password, string emailid)
    {
        //In above line we declaring different variables same as backend
        SqlConnection conn = new SqlConnection(GetConnectionString());
        //In above line we are calling connection 
        //string function which is defined already on top
        string sql = "INSERT INTO myTb (name, username, password, emailid) VALUES "
        + " (@name, @username, @password, @emailid)";
        //In above lines we are just storing the sql commands which 
        //will insert value in onlineapplication named table, 
        //using variable named sql.
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            //In above lines we are opening the connection to work and
            //also storing connection name and sql command in cmd variable
            //which has 'SqlCommand' type.
            SqlParameter[] pram = new SqlParameter[4];
            //In above lines we are defining 4 sql parameters will be use
            //In below lines we will not disscuss about id column
            pram[0] = new SqlParameter("@name", SqlDbType.VarChar, 50);
            pram[1] = new SqlParameter("@username", SqlDbType.VarChar, 50);
            pram[2] = new SqlParameter("@password", SqlDbType.VarChar, 50);
            pram[3] = new SqlParameter("@emailid", SqlDbType.Char, 10);
            //Now we set-uped all fiels in database in above lines
            //Now we will set-up form fields
            pram[0].Value = name;
            pram[1].Value = username;
            pram[2].Value = password;
            pram[3].Value = emailid;
            //Now create loop to insert
            for (int i = 0; i < pram.Length; i++)
            {
                cmd.Parameters.Add(pram[i]);
            }
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
        }
        catch (System.Data.SqlClient.SqlException ex_msg)
        {
            //Here will be catch elements
            string msg = "Error occured while inserting";
            msg += ex_msg.Message;
            throw new Exception(msg);
        }
        finally
        {
            //Here will be fially elements
            conn.Close();
        }

    }


    //here is from click event starts and check for duplication account

    protected void create_Click(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = ConfigurationManager.ConnectionStrings["myDbConnectionString1"].ToString();

        sds.SelectParameters.Add("name", TypeCode.String, this.name.Text);
        sds.SelectParameters.Add("username", TypeCode.String, this.username.Text);
        sds.SelectParameters.Add("password", TypeCode.String, this.password.Text);
        sds.SelectParameters.Add("emailid", TypeCode.String, this.emailid.Text);

        //sds.InsertParameters.Add("name", TypeCode.String, this.name.Text);
        //sds.InsertParameters.Add("username", TypeCode.String, this.username.Text);
        //sds.InsertParameters.Add("password", TypeCode.String, this.password.Text);
        //sds.InsertParameters.Add("emailid", TypeCode.String, this.emailid.Text);

        sds.SelectCommand = "SELECT * FROM [myTb] WHERE [username] = @username";

        DataView dv = (DataView)sds.Select(DataSourceSelectArguments.Empty);

        if (dv.Count != 0)
        {
            this.lblinfo.ForeColor = System.Drawing.Color.Red;
            this.lblinfo.Text = "The user already Exist!";
            return;
        }
        else
        {   
            //will call the insert function here from above function
            execution(name.Text,username.Text,password.Text,emailid.Text);
            //this.SqlDataSource1.Insert();
            this.lblinfo.Text = "New User Profile has been created you can login now";
            this.name.Text = "";
            this.username.Text = "";
            this.password.Text = "";
            this.emailid.Text = "";
        }
    }
}
