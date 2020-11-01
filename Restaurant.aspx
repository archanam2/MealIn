<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Restaurant.aspx.cs" Inherits="Restaurant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .yesform
    {
        height: 1000px;
        width: 1225px;
        border: 1px Solid red;
        margin-top: 10px;
        margin-left: 20px;
        }
    
        .style4
    {
        width: 100%;
    }
        
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="yesform">
    <table class="style4">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Our Restaurant Resources....</h1>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="RSDatalist" runat="server" CellPadding="4" ForeColor="#333333" 
                    RepeatColumns="4" RepeatDirection="Horizontal" 
                    onselectedindexchanged="RSDatalist_SelectedIndexChanged" Height="200px">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <ItemTemplate>
                        <table class="style4">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("RName") %>' 
                                        Font-Bold="True" Font-Size="X-Large" ForeColor="#660033"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' 
                                        Height="200px" Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;Ratings:-
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Ratings") %>'></asp:Label>
                                    &nbsp;&nbsp; Reviews:<asp:Label ID="Label3" runat="server" Text='<%# Eval("Reviews") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Location :
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Location") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Time :
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Time") %>'></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" BackColor="#33CC33" BorderStyle="None" 
                                        ForeColor="#CC0066" Height="45px" PostBackUrl="~/mypro.aspx" Text="View Menus" 
                                        Width="150px" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</div>

</asp:Content>

