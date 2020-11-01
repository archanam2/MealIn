<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link  href="css/style.css" media="screen" rel="stylesheet"/>
    <script src="swalert.js" type="text/javascript"></script>
<script>
    function alertme() {
        Swal.fire(
  'Congratulations....!',
  'You have been successfully Registered.....!',
  'success'
)

    }

</script>

    <style>
        .background
        {
            background-image: url("images/food4.jpg");
            opacity: 0.7;
            height: 620px;
             margin-bottom: 45px;
            
            }

        .registermodule
        {
            
            height: 615px;
            width: 700px;
            border: 2px solid red;
            margin-left: 550px;
            margin-top: 50px;
            margin-bottom: 50px;
            }
            .input
            {
                margin-left: 70px;
                }
                .rlbtn
                {
                    margin-top: 40px;
                    margin-left:100px;
                    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="background">
    <div class="registermodule">
        <center><h1 style="font-size:xx-large; margin-top: 20px; color:Red">REGISTER</h1></center><br />
       <form method="post" action="home.aspx">
       
       &nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="TextBox1" class="input" runat="server" ForeColor="#000066" placeholder="Enter Name........." Height="35px" padding="15px" Width="300px" BorderColor="#000099"></asp:TextBox>
       <br />
       
       <br />
       &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" class="input" placeholder="Enter Email ID........." ForeColor="#000066" Height="35px"  Width="300px" BorderColor="#000066"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
           ControlToValidate="TextBox2" ErrorMessage="Email should be abc@gmail.com " 
           ForeColor="Red" 
           ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
       <br />        
       <br />
       &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
           ID="TextBox3" runat="server" BorderColor="#000066" class="input" placeholder="Enter Mobile No.........." ForeColor="#000066" 
           Height="35px" Width="300px"></asp:TextBox>
       &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
           runat="server" ControlToValidate="TextBox3" 
           ErrorMessage="Mobile number should be 10 digit only." ForeColor="Red" 
           ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
       </br>
       <br />
       &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
           ID="TextBox4" runat="server" placeholder="Enter Address........." class="input" BorderColor="Black" ForeColor="Black" 
           Height="35px" Width="300px"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ControlToValidate="TextBox4" ErrorMessage="* Required" ForeColor="Red">* Required</asp:RequiredFieldValidator>
       </br>
       <br />
       &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
           ID="TextBox5" runat="server" class="input" placeholder="Enter Password........." 
           BorderColor="#000066" ForeColor="#000066" 
           Height="35px" Width="300px" TextMode="Password"></asp:TextBox>
       <br />
       <br />
       &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
           ID="TextBox6" runat="server" class="input" placeholder="Re-Enter Password......." BorderColor="#000066" ForeColor="Black" 
           Height="35px" Width="300px" TextMode="Password"></asp:TextBox>
       &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
           ControlToCompare="TextBox5" ControlToValidate="TextBox6" 
           ErrorMessage="should be same with password" ForeColor="Red"></asp:CompareValidator>
       </br>
              <p class="accregister">
           <asp:Button ID="Button1" runat="server" class="rlbtn" BackColor="Red" BorderStyle="None" 
               Font-Size="X-Large" ForeColor="White" Height="40px" Text="REGISTER NOW" 
               Width="330px" onclick="Button1_Click" />
       </p>
      
       <p class="accregister">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Have an Account&nbsp;&nbsp;&nbsp;
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">LogIn</asp:HyperLink>
       </p>
       
       

       </form>
       </div>
       </div>

</asp:Content>

