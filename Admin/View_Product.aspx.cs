using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_View_Product : System.Web.UI.Page
{
    string connection = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\shree\Documents\Project\Foodies\App_Data\foodies.mdf;Integrated Security=True;User Instance=True";

    protected void Page_Load(object sender, EventArgs e)
    {

        using (SqlConnection con = new SqlConnection(connection))
        {
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select * FROM Menus", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            FSgridview.DataSource = dt;
            FSgridview.DataBind();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}