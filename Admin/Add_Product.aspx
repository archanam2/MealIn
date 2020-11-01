<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Add_Product.aspx.cs" Inherits="Admin_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    .Addform
    {
        height: 700px;
        width: 1200px;
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
        <table class="style2">
            <tr>
                <td class="style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                <br />
                <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="!...ADD PRODUCT...!" ForeColor="Blue" Font-Size="XX-Large"></asp:Label></h1></td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Price  : "  ForeColor="Blue" Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Menu Name  :  " ForeColor="Blue" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="#000066" placeholder="Enter Name........." Height="35px" padding="15px" Width="300px" BorderColor="#000099"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                   &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label7" runat="server" Text="Image  : "  ForeColor="Blue" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="#000066"  Height="35px" padding="15px" Width="300px" BorderColor="#000099" /><br /><br /> </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Description  : "  ForeColor="Blue" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                     <asp:TextBox ID="TextBox2" runat="server" ForeColor="#000066" placeholder="brief Description........." Height="35px" padding="15px" Width="300px" BorderColor="#000099"></asp:TextBox><br /><br /></td>
            </tr>
            <tr>
                <td class="style3">
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Price : " ForeColor="Blue" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" ForeColor="#000066" placeholder="Enter Price in Rs.........." Height="35px" padding="15px" Width="300px" BorderColor="#000099"></asp:TextBox><br /><br /></td>
            </tr>
            
           <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                   &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label6" runat="server" Text="Spice Level  : "  ForeColor="Blue" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" ForeColor="#000066" 
                        Height="35px" padding="15px" Width="300px" BorderColor="#000099" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem>Adult level</asp:ListItem>
            <asp:ListItem>BalGopal</asp:ListItem>
            <asp:ListItem>Aaji Ajoba</asp:ListItem>
            <asp:ListItem>Normal</asp:ListItem>
        </asp:DropDownList></br>
            </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button8" runat="server" BackColor="#FF3300" BorderStyle="None" 
                        ForeColor="White" Height="35px" Text="ADD" Width="250px" 
                        onclick="Button8_Click" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        

        </form>
    

</div>
</asp:Content>

