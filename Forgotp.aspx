<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Forgotp.aspx.cs" Inherits="Forgotp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link  href="css/style.css" media="screen" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="formmodule">
        <center><h1 style="font-size:xx-large; margin-top: 20px; color:Red">Forgot Your Password?</h1><br />

        <h6>Don't Worry!!! Create your new password here....</h6></center>
       <form>
       <input type="password" class="loginput"placeholder="New Password......." /></br>
       <input type="password" class="loginput" placeholder="Confirm Password......." /><br /><br />
       <input type="button" class="buttonlgn" value="Reset Password" />
      
       

       </form>
       </div>
</asp:Content>

