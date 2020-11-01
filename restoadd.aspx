<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="restoadd.aspx.cs" Inherits="restoadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link  href="css/style.css" media="screen" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registermodule">
        <center><h1 style="font-size:xx-large; margin-top: 20px; color:Red">Add Restaurants</h1></center>
       <form method="post" action="home.aspx">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" ForeColor="#000066" placeholder="Enter Restaurant Name........." Height="35px" padding="15px" Width="300px" BorderColor="#000099"></asp:TextBox><br />

       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" 
           ForeColor="#000066" placeholder="Enter Ratings........." Height="35px" 
           padding="15px" Width="300px" BorderColor="#000099" ></asp:TextBox>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" 
           ForeColor="#000066" placeholder="Enter Revies........." Height="35px" 
           padding="15px" Width="300px" BorderColor="#000099" ></asp:TextBox>
       
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BackColor="Red" BorderStyle="None" 
               Font-Size="X-Large" ForeColor="White" Height="40px" Text="ADD" 
               Width="330px" onclick="Button1_Click"  />
       </form>
</div>
</asp:Content>

