<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="abc.aspx.cs" Inherits="abc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="swalert.js" type="text/javascript"></script>
<script>
function alertme(){
Swal.fire(
  'Good job!',
  'You clicked the button!',
  'success'
)

}

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
</asp:Content>

