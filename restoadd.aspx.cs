using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class restoadd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project\Food4Foodie\App_Data\food4.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Menus values('" + TextBox1.Text + "','" + FileUpload1.FileName + "','" +TextBox2.Text+ "','" + TextBox3.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Registration Done')</script>");

    }
}