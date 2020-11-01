<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="mypro.aspx.cs" Inherits="mypro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .yesform
    {
        height: 1200px;
        width: 1225px;
        border: 1px Solid red;
        margin-top: 10px;
        margin-left: 20px;
        margin-bottom:10px;
        }
    
        .style1
        {
            width: 99%;
        }
        
        .style2
        {
            width: 17px;
        }
        .style3
        {
            width: 1022px;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <div style="padding:10px;width:100%;overflow:auto;">

<div class="yesform">
    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We are here to serve good quality,home made and delicious food at your &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;door step...</h1><br />
            </td>
        </tr>
        <tr>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <td class="style3">
                <asp:DataList ID="VSdatalist" runat="server" CellPadding="4" 
                    RepeatColumns="4" RepeatDirection="Horizontal" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged" 
                    ForeColor="#333333" Width="650px" Height="662px" 
                    onitemcommand="VSdatalist_ItemCommand" DataSourceID="SqlDataSource1" >
                    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                  <ItemTemplate>
                         <table class="style1">
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("PName") %>' 
                                        BorderColor="#0000CC" Font-Bold="True" Font-Size="X-Large" ForeColor="#660033"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' 
                                        Height="250px" Width="275px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("SpiceLevel") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Price: Rs.
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                    .00</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Qty :<asp:DropDownList ID="DropDownList1" runat="server" >
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                             <tr>
                                 <td class="style2">
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BackColor="Red" 
                                         BorderStyle="None" CommandArgument='<%# Eval("PID")%>' CommandName="AddTocart" 
                                         ForeColor="White" Height="50px" Text="Add To Cart" Width="200px" />
                                 </td>
                             </tr>
                        </table>
                         
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
            </td>
        </tr>
        
        <tr>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
    </div>
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\foodies.mdf;Integrated Security=True;User Instance=True" 
        ProviderName="System.Data.SqlClient" 
        SelectCommand="SELECT [PID], [PName], [Image], [Description], [Price], [SpiceLevel] FROM [Menus]"></asp:SqlDataSource>
</asp:Content>

