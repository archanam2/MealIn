using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mypro : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

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
         DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
         Response.Redirect("AddTocart.aspx?id=" + e.CommandArgument.ToString() + "&Qty=" + dlist.SelectedItem.ToString());
        }

    }
}