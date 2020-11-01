using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Menu : System.Web.UI.Page
{
    string connection = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\shree\Documents\Project\Foodies\App_Data\foodies.mdf;Integrated Security=True;User Instance=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        
        Session["addproduct"] = "false";
        using (SqlConnection con = new SqlConnection(connection))
        {
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select * FROM Menus", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            VSdatalist.DataSource = dt;
            VSdatalist.DataBind();
        }
    }
    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void VSdatalist_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "AddTocart")
        {
            Session["addproduct"] = "true";
            Response.Redirect("AddTocart.aspx?id=" + e.CommandArgument.ToString());
        }
      
    }
}