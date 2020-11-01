<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddResto.aspx.cs" Inherits="Admin_AddResto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .Addform
    {
        height: 700px;
        width: 1262px;
        border: 1px Solid red;
        margin-top: 10px;
        }
    .style2
    {
        width: 100%;
    }
    .style3
    {
        width: 172px;
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
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="!...ADD RESTURANTS...!" ForeColor="Blue" Font-Size="XX-Large"></asp:Label></h1></td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" 
                        Text="Restaurant Name  :  " ForeColor="Blue" Font-Size="Large"></asp:Label>
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
                   &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label7" runat="server" Text="Image  : "  
                        ForeColor="Blue" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="#000066"  Height="35px" padding="15px" Width="300px" BorderColor="#000099" />
                    <asp:Label ID="Label3" runat="server" Text="Image  : "  ForeColor="Blue" 
                        Font-Size="X-Large"></asp:Label>
                    <br /><br /> </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Ratings :"  
                        ForeColor="Blue" Font-Size="Large"></asp:Label>
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
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Reviews : " 
                        ForeColor="Blue" Font-Size="Large"></asp:Label>
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
                   &nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Label ID="Label6" runat="server" 
                        Text="Location  : "  ForeColor="Blue" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" ForeColor="#000066" 
                        Height="35px" padding="15px" Width="300px" BorderColor="#000099" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem>Vita</asp:ListItem>
            <asp:ListItem>Sangli</asp:ListItem>
            <asp:ListItem>Pune</asp:ListItem>
            <asp:ListItem>Karad</asp:ListItem>
            <asp:ListItem>Ichalkaranji</asp:ListItem>
            <asp:ListItem>Satara</asp:ListItem>
            <asp:ListItem>Tasgaon</asp:ListItem>
            <asp:ListItem>Mumbai</asp:ListItem>
            <asp:ListItem>Andheri</asp:ListItem>
            <asp:ListItem>Miraj</asp:ListItem>
            <asp:ListItem>Barshi</asp:ListItem>
            <asp:ListItem>Islampur</asp:ListItem>
            <asp:ListItem>Khanapur</asp:ListItem>
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Label ID="Label10" runat="server" 
                        Text="Time : "  ForeColor="Blue" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" ForeColor="#000066" placeholder="Enter Price in Rs.........." Height="35px" padding="15px" Width="300px" BorderColor="#000099"></asp:TextBox>
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
                    :&nbsp;&nbsp;&nbsp;&nbsp; </td>
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
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
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

