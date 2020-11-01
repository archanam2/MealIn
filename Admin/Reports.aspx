<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Admin_Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    .Addform
    {
        height: 350px;
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
        width: 495px;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="background">
<div class="Addform">

    <table class="style2">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" ForeColor="#0000CC" 
                    Text="Reports"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="X-Large" 
                    ForeColor="#0000CC" NavigateUrl="~/Admin/UserReport.aspx">User Report</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="X-Large" 
                    NavigateUrl="~/Admin/View_Product.aspx">Product Report</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="X-Large" 
                    ForeColor="#0000CC" NavigateUrl="~/Admin/ViewResto.aspx">Restaurant Report</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="X-Large" 
                    NavigateUrl="~/Admin/FeedbackReport.aspx">FeedBack Report</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink5" runat="server" Font-Size="X-Large" 
                    ForeColor="#0000CC">Order Report</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        
    </table>

</div>
</div>
</asp:Content>

