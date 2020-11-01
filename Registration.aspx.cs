using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;


public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\shree\Documents\Project\Foodies\App_Data\foodies.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme()", true);
         
        con.Open();
        SqlCommand cmd =con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into register values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
       
        /*string destinationaddr = "91" + TextBox3.Text;
        string message = " Hii " + TextBox1.Text + "Congratulations ...!!You have been successfully registered.WE appreciate your time and preference....Thanks ...👍😀😀😇😇💐";
        String message1 = HttpUtility.UrlEncode(message);
        String send = "TXTLCL";
        using (var wb = new WebClient())
        {


            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
            {
            {"apikey", "xSqOB13Zy48-m392HFenvzv1eyi590i8L0pfyiJXat" },
            {"numbers", destinationaddr},
            {"message", message1},
            {"sender", send}
            });
            string result = System.Text.Encoding.UTF8.GetString(response);

        }
        */

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (TextBox1.Text.Length < 8)
            args.IsValid = false;
        else
            args.IsValid = true;

    }
}