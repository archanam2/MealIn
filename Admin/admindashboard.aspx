<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admindashboard.aspx.cs" Inherits="Admin_admindashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    .Addform
    {
        height: 400px;
        width: 1275px;
        border: 1px Solid red;
        margin-top: 10px;
        }
    .style2
    {
        width: 100%;
    }
    .style3
    {
        width: 180px;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="Addform">
<center>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Admin/imgpro/admin.png" /></br>
    <asp:Label ID="Label1" runat="server" Text="Welcome.....Admin.....!" ForeColor="#0000CC" Font-Size="XX-Large"></asp:Label>
    </center>
</div>
</asp:Content>

