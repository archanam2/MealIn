using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\shree\Documents\Project\Foodies\App_Data\foodies.mdf;Integrated Security=True;User Instance=True");
    static String imagelink;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getproductid();
        }
    }
    protected void Button8_Click(object sender, EventArgs e)
    {

        if (uploadimage() == true)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Menus(PName,Image,Description,Price,SpiceLevel) values('" + TextBox1.Text + "','" + imagelink + "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+ DropDownList2.SelectedItem.Value+"')";
            cmd.ExecuteNonQuery();
            con.Close();
        


            
          
            Label8.Text = "Product Has Been Successfully Saved";
            getproductid();
            TextBox1.Text = "";
            TextBox2.Text = "";
        }



    }
    private Boolean uploadimage()
    {
        Boolean imagesaved = false;
        if (FileUpload1.HasFile == true)
        {

            String contenttype = FileUpload1.PostedFile.ContentType;

            if (contenttype == "image/jpeg")
            {

                FileUpload1.SaveAs(Server.MapPath("~/Admin/imgpro/") + Label3.Text + ".jpg");
                imagelink = "~/Admin/imgpro/" + Label3.Text + ".jpg";
                imagesaved = true;
            }
            else
            {
                Label4.Text = "Kindly Upload JPEG Format Image Only";
            }

        }

        else
        {
            Label4.Text = "You have not selected any file - Browse and Select File First";
        }

        return imagesaved;

    }
    public void getproductid()
    {
        SqlConnection scon = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\shree\Documents\Project\Foodies\App_Data\foodies.mdf;Integrated Security=True;User Instance=True");
        String myquery = "select PID from Menus";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            Label3.Text = " ";

        }
        else
        {



            SqlConnection scon1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\shree\Documents\Project\Foodies\App_Data\foodies.mdf;Integrated Security=True;User Instance=True"); 
            String myquery1 = "select max(PID) from Menus";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            Label3.Text = ds1.Tables[0].Rows[0][0].ToString();
            int a;
            a = Convert.ToInt16(Label3.Text);
            a = a + 1;
            Label3.Text = a.ToString();
            scon1.Close();
        }

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}