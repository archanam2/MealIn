using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddTocart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        //if(Session["addproduct"].ToString() == "true")
        {
            //  Session["addproduct"] = "false";
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("PID");
            dt.Columns.Add("PName");
            dt.Columns.Add("Image");
            dt.Columns.Add("Description");
            dt.Columns.Add("Price");
            dt.Columns.Add("SpiceLevel");
            dt.Columns.Add("Qty");
            dt.Columns.Add("TotalPrice");


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                    String mycon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\shree\Documents\Project\Foodies\App_Data\foodies.mdf;Integrated Security=True;User Instance=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from Menus where PID=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["PID"] = ds.Tables[0].Rows[0]["PID"].ToString();
                    dr["PName"] = ds.Tables[0].Rows[0]["PName"].ToString();
                    dr["Image"] = ds.Tables[0].Rows[0]["Image"].ToString();
                    dr["Description"] = ds.Tables[0].Rows[0]["Description"].ToString();
                    dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                    dr["SpiceLevel"] = ds.Tables[0].Rows[0]["SpiceLevel"].ToString();
                    dr["Qty"] = Request.QueryString["Qty"];
                    int Price = Convert.ToInt16(ds.Tables[0].Rows[0]["Price"].ToString());
                    int Qty = Convert.ToInt16(Request.QueryString["Qty"].ToString());
                    int TotalPrice = Price * Qty;
                    dr["TotalPrice"] = TotalPrice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("AddTocart.aspx");
                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    String mycon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\shree\Documents\Project\Foodies\App_Data\foodies.mdf;Integrated Security=True;User Instance=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from Menus where PID =" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["PID"] = ds.Tables[0].Rows[0]["PID"].ToString();
                    dr["PName"] = ds.Tables[0].Rows[0]["PName"].ToString();
                    dr["Image"] = ds.Tables[0].Rows[0]["Image"].ToString();
                    dr["Description"] = ds.Tables[0].Rows[0]["Description"].ToString();
                    dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                    dr["Qty"] = Request.QueryString["Qty"];
                    dr["SpiceLevel"] = ds.Tables[0].Rows[0]["SpiceLevel"].ToString();
                    


                    int Price = Convert.ToInt16(ds.Tables[0].Rows[0]["Price"].ToString());
                    int Qty = Convert.ToInt16(Request.QueryString["Qty"].ToString());
                    int TotalPrice = Price * Qty;
                    dr["TotalPrice"] = TotalPrice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("AddTocart.aspx");

                }
            }



            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                }
            }
        }


    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["TotalPrice"].ToString());
            i = i + 1;
        }
        return gtotal;
        }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Checkout.aspx");
    }
}
    
