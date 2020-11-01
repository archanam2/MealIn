<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Food4Foodie</title>
<meta name="description" content="A free template from http://ws-templates.com">
<meta name="keywords" content="keyword1,keyword2"/>

<link rel="stylesheet" href="nivo-slider/default/default.css" type="text/css" media="screen" />
<link rel="stylesheet" href="nivo-slider/default/nivo-slider.css" type="text/css" media="screen" />

<link  href="css/screen.css" media="screen" rel="stylesheet"/>
<link  href="css/style.css" media="screen" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section id="slider_wrapper" class="slider-wrapper theme-default container">
	
     <div class="search-form">
        <form>
        <input type="text" class="inputsearch"placeholder="Search By Restaurant Name......." />
        <input type="button" class="Search-btn"value="Search" />
        <h2 style="padding-left:300px; color: White">----OR----</h2>
        <input type="text" class="inputsearch" placeholder="Search By Location!!!......." />
        <input type="button" class="Search-btn"value="Search" />
        </form>
    </div>
    <div id="slider" class="nivoSlider">
                <img src="images/burger.jpg" data-thumb="images/img1.jpg" alt="" />
                <img src="images/Dosa.jpg" data-thumb="images/img1.jpg" alt=""  />
                <img src="images/Kobi.jpg" data-thumb="images/img1.jpg" alt=""  />
                <img src="images/veg.jpg" data-thumb="images/img1.jpg" alt=""  />

     </div>
	
</section>
<section id="three_parags">
	<div class="container">
		<div class="one_parag span-8">
			<div class="icon_h2_wrapper">
				<img src="images/icon01.jpg" alt="" />
				<a href="#"><h2>Who we are</h2></a>
			</div>
		<p>set del amet puido cerar una puertagfrr cerar una puerta vset delamet<br/>puido cerar</p>
		</div>
		<div class="one_parag span-8">
			<div class="icon_h2_wrapper">
				<img src="images/icon02.jpg" alt="" />
				<a href="#"><h2>What we do</h2></a>
			</div>
		<p>set del amet puido cerar una puertagfrr cerar una puerta vsetdelame <br/>t puido cerar</p>
		</div>
		<div class="one_parag span-8 last">
			<div class="icon_h2_wrapper">
				<img src="images/icon03.jpg" alt="" />
				<a href="#"><h2>Why choose us</h2></a>
			</div>
		<p>set del amet puido cerar una puertagfrr cerar una puerta vset delamet<br/> puido cerar</p>
		</div>
		</div>
</section>
</asp:Content>

