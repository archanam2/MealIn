﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Checkout : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\shree\Documents\Project\Foodies\App_Data\foodies.mdf;Integrated Security=True;User Instance=True");
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
                    dr["TotalPrice"] = ds.Tables[0].Rows[0]["TotalPrice"].ToString();
                    dr["SpiceLevel"] = ds.Tables[0].Rows[0]["SpiceLevel"].ToString();
                    dr["Qty"] = Request.QueryString["Qty"];
                    dr["TotalPrice"] = ds.Tables[0].Rows[0]["TotalPrice"].ToString();
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
                    dr["TotalPrice"] = ds.Tables[0].Rows[0]["TotalPrice"].ToString();

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
        Label4.Text = DateTime.Now.ToShortDateString();
        Label10.Text = DateTime.Now.ToShortTimeString();
        Label13.Text = Session["Name"].ToString();
        findorderid();
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
    public void findorderid()
    {
        String pass = "abcdefghijklmnopqrstuvwxyz0123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(35 * r.NextDouble())];
        }
        String orderid;
        orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);
        Label2.Text = orderid;
    }
    public void saveaddress()
    {
    
           
             SqlConnection s = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\shree\Documents\Project\Foodies\App_Data\foodies.mdf;Integrated Security=True;User Instance=True");
             s.Open();
            
             SqlCommand cmd = s.CreateCommand();
             cmd.CommandType = CommandType.Text;
             cmd.CommandText = "insert into OrderTbl(orderid,date,time,Name,address,mobilenumber) values('" + Label2.Text + "','" + Label4.Text + "','" + Label10.Text + "','"+Label13.Text+"','" + TextBox1.Text + "','" + TextBox2.Text + "')";
             cmd.ExecuteNonQuery();
             s.Close();
    
    }

   
    protected void  Button1_Click(object sender, EventArgs e)
    {
        DataTable dt;
        dt = (DataTable)Session["buyitems"];

        for (int i = 0; i <= dt.Rows.Count - 1; i++ )
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into OrderInfo (orderid,Username,PID,ProductName,Price,Qty,date,time,TotalAmt,address,mobilenumber) values('" + Label2.Text + "','" + Label13.Text + "','" + dt.Rows[i]["PID"] + "','" + dt.Rows[i]["PName"] + "','" + dt.Rows[i]["Price"] + "','" + dt.Rows[i]["Qty"] + "','" + Label4.Text + "','" + Label10.Text + "','" + grandtotal().ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();




            /*String updatepass = "";
            String con = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\shree\Documents\Project\Foodies\App_Data\foodies.mdf;Integrated Security=True;User Instance=True";
            SqlConnection s = new SqlConnection(con);
            s.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatepass;
            cmd.Connection = s;
            cmd.ExecuteNonQuery();
            s.Close();*/


        }
        saveaddress();
        Response.Redirect("placeorder.aspx");
        

    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
}
    

