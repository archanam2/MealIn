<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link  href="css/style.css" media="screen" rel="stylesheet"/>
    <style>
        .background
        {
            background-image: url("images/food4.jpg");
            opacity: 0.7;
            height: 400px;
             margin-bottom: 45px;
            
            }
        .registermodule
        {
            height: 395px;
            
            width: 500px;
            border: 2px solid red;
            margin-left: 625px;
            margin-top:50px;
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
    <script src="swalert.js" type="text/javascript"></script>
<script>
    function alertme() {
        Swal.fire(
  'Good Job....!',
  'Now you are logged in.....!',
  'success'
)

    }

</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="background">
     <div class="registermodule">
        <center><h1 style="font-size:xx-large; margin-top: 20px; color:Red">LOGIN</h1></center><br />
       <form>

       <asp:TextBox ID="TextBox1" runat="server" class="input" ForeColor="#000066" placeholder="Enter Name........." Height="35px" padding="15px" Width="300px" BorderColor="#000099" ></asp:TextBox>&nbsp;<asp:RequiredFieldValidator 
           ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
           ErrorMessage="*Requred" ForeColor="Red">* Required</asp:RequiredFieldValidator>
       <br /></br>
       <asp:TextBox ID="TextBox2" runat="server" class="input" ForeColor="#000066" 
           placeholder="Enter Name........." Height="35px" padding="15px" Width="300px" 
           BorderColor="#000099" TextMode="Password"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ControlToValidate="TextBox2" ErrorMessage="*Required" ForeColor="Red"> *Required</asp:RequiredFieldValidator>
       <p class="accregister">
           <asp:Button ID="Button1" runat="server" class="rlbtn" BackColor="Red" BorderStyle="None" 
               Font-Size="X-Large" ForeColor="White" Height="40px" Text="SIGN IN" 
               Width="250px" onclick="Button1_Click"  />
       </p>


       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink 
           ID="HyperLink2" runat="server" ForeColor="Blue" NavigateUrl="~/Forgotp.aspx">Forgot Password</asp:HyperLink>

      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <p class="accregister">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Don't have account yet?&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Create an Account</asp:HyperLink>
       </p>
       <p class="accregister">
       <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>

       </p>
       

       </form>
       </div>
       </div>
       
    
</asp:Content>

