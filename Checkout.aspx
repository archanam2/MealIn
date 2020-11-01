<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

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
    
        .style4
    {
        width: 100%;
    }
        
        .style5
    {
        width: 118px;
    }
        
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="yesform">


    <table class="style4">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Font-Size="XX-Large" ForeColor="#0000CC" 
                    Text="CheckOut"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Order ID&nbsp; :&nbsp;
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Order Date :
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;<asp:Label ID="Label11" runat="server" Text="Order Time "></asp:Label>
                :
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Name : "></asp:Label>
                <asp:Label ID="Label13" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" BorderColor="#000066" 
                    BorderStyle="Double" ClientIDMode="AutoID" ShowFooter="True">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField HeaderText="Sr. no." DataField="sno" />
                        <asp:BoundField DataField="PName" HeaderText="Product Name" />
                        <asp:ImageField DataImageUrlField="Image" HeaderText="Product Image">
                            <ControlStyle Height="200px" Width="200px" />
                            <ItemStyle Height="50px" Width="50px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Description" HeaderText="Description" />
                        <asp:BoundField DataField="Price" HeaderText="Price" />
                        <asp:BoundField DataField="Qty" HeaderText="Quantity" />
                        <asp:BoundField HeaderText="Total Price" DataField="TotalPrice" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style4">
                    <tr>
                        <td class="style5">
                <asp:Label ID="Label5" runat="server" Text="Address : "></asp:Label>
                        </td>
                        <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" BorderStyle="Solid" 
                                Height="50px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                <asp:Label ID="Label6" runat="server" Text="Mobile No. : "></asp:Label>
                        </td>
                        <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Text"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                <asp:Label ID="Label7" runat="server" Text="Payment Mode : "></asp:Label>
                        </td>
                        <td>
                            only cash on delivery<br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <asp:Button ID="Button1" runat="server" BackColor="#FF3300" BorderStyle="None" 
                                Font-Size="Large" ForeColor="White" Height="40px" Text="Place Order" 
                                onclick="Button1_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
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


</div></asp:Content>

