using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    String str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\shree\Documents\Project\Foodies\App_Data\foodies.mdf;Integrated Security=True;User Instance=True";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme()", true);

        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand("select COUNT(*) from adminlogin WHERE Adminname  = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "'");
        con.Open();
        cmd.Connection = con;
        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
        if (OBJ > 0)
        {
          //  Session["Adminname"] = TextBox1.Text;
            Response.Redirect("Admin/admindashboard.aspx");
        }
        else
        {
            Label1.Text = "    *Invalid username or password";
        }
        con.Close();

        SqlConnection scon = new SqlConnection(str);
        String myquery = "Select * from register where Name = '" + TextBox1.Text + "'";
        SqlCommand cmd2 = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String uname;
        String pass;
        if (ds.Tables[0].Rows.Count > 0)
        {
            uname = ds.Tables[0].Rows[0]["Name"].ToString();
            pass = ds.Tables[0].Rows[0]["Password"].ToString();
            scon.Close();
            if (uname == TextBox1.Text && pass == TextBox2.Text)
            {
                Session["Name"] = uname;
                Response.Redirect("mypro.aspx");

            }

            else { }

        }
    }
}