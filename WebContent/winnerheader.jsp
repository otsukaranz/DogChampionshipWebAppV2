<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dog Championship</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Cormorant" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Reenie+Beanie" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

	<div class="header">
		<div class="hbContent">
			<h1>Loading advertisement header...</h1>
			<img class="mySlides w3-animate-left" src="images/banner1.PNG" width="100%">
			<img class="mySlides w3-animate-left" src="images/banner2.PNG" width="100%">
		<!-- 	<img class="mySlides w3-animate-left" src="images/img1.jpg" width="100%">
			<img class="mySlides w3-animate-left" src="images/img2.jpg" width="100%">
			<img class="mySlides w3-animate-left" src="images/img3.jpg" width="100%">
			<img class="mySlides w3-animate-left" src="images/img4.jpg" width="100%"> -->
		</div>
	</div>
	<div id="navbar">
		<a id="logo" href="#" style="pointer-events:none;font-size:40px !important">Dog Championship 2018</a>
		<div id="navbar-right">
			<a id="nav-btn" href="index.jsp">HOME</a> 
			<a id="nav-btn" href="searchentry.jsp">SEARCH</a>
			<a onclick="dropdownBtn()" class="dropbtn default">PARTICIPANTS</a>
			<a id="nav-btn" href="HandlerPage">HANDLERS</a>
			<a id="nav-btn" href="winnerheader.jsp">WINNERS</a>
		</div>
		<div id="myDropdown" class="dropdown-content" style="top:26.1%;left:18.1% important">
				  <button onclick="location.href='ShowListByGroup?day=one'">Day ONE</button><br>
			      <button onclick="location.href='ShowListByGroup?day=two'">Day TWO</button><br>
			      <button onclick="location.href='ShowListByGroup?day=three'">Day THREE</button><br>
			      <button onclick="location.href='ShowListByGroup?day=all'">Show ALL</button><br>
		</div>
	</div>

	<div
		style="
			position: absolute;
			background-color:rgba(247, 221, 196, 0.9);
			top: 26%;
			z-index: -1;
			width: 100%;
		">
		<div id="winnerHeader1" style="
		    position: relative;
		    text-align: center;
		    background-color: #339999;
		    height: 68px;
		    top: -8px;
		    width: 100%;
		">
				<h2 style="position: relative;top: 16%">Click category to view the winners.</h2>
		
			<div id="winnerHeader2" style="
									background-color: #339999;
	    							position: relative;
	    							top: 14.5px;
	    							width: 100%;
	    							height: 40px;
	    							font-family: 'Raleway', sans-serif;
	    							font-weight: bold;
	    	">
					<a href="#" class="w3-button w3-green hbtn" onclick="OpenPage('ShowWinners?opt=1');">BEST OF BREED</a>
					<a href="#" class="w3-button w3-green hbtn" onclick="OpenPage('ShowWinners?opt=2');">RESERVE WINNERS</a>
					<a href="#" class="w3-button w3-green hbtn" onclick="OpenPage('ShowWinners?opt=3');">BEST OF OPPOSITE SEX</a>			
					<a href="#" class="w3-button w3-green hbtn" onclick="OpenPage('ShowWinners?opt=4');">GROUP WINNERS</a>			
					<a href="#" class="w3-button w3-green hbtn" onclick="OpenPage('ShowWinners?opt=5');">BEST IN SHOW</a>		
			</div>
		</div>
	</div>
	<div id="magicBox" style="					
		    position: relative;
		    height: auto;
		    width: 100%;
		    top: 158px;
	">
		
		
	
	
			   	<!-- open page in div script  -->
	    		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
				<script type="text/javascript">
				function OpenPage(url)
				{
					$.get(url, function(response)
					{
						$('#magicBox').html(response);
					});
				}
				</script>
	</div>
	
	

<script>
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
	var navbar = document.getElementById("navbar");
	var sticky = navbar.offsetTop;
	var myDropdown = document.getElementById("myDropdown");
  if (document.body.scrollTop > 138 || document.documentElement.scrollTop > 138) {
	 	navbar.style.background = "white";
    	navbar.style.boxShadow = "0 0 8px 0px";
    	navbar.classList.add("sticky");
    	document.getElementById("logo").style.fontSize = "40px";
        /* document.getElementById("blur2").style.opacity = "1"; */
        myDropdown.style.position="fixed";
        myDropdown.style.top="6.5%";
        
  } else {
	    navbar.style.background = "";
		navbar.style.boxShadow = "0 0 0px 0px";
		navbar.classList.remove("sticky");
		document.getElementById("logo").style.fontSize = "80px";
	    /* document.getElementById("blur2").style.opacity = "0"; */
	   	myDropdown.style.position="absolute";
	    myDropdown.style.top="26.1%";
		
  }
}
	
	
function dropdownBtn() {
    document.getElementById("myDropdown").classList.toggle("show");
}

window.onclick = function(event) {
	if (!event.target.matches('.dropbtn')) {

	    var dropdowns = document.getElementsByClassName("dropdown-content");
	    var i;
	    for (i = 0; i < dropdowns.length; i++) {
	      var openDropdown = dropdowns[i];
	      if (openDropdown.classList.contains('show')) {
	        openDropdown.classList.remove('show');
	      }
	    }
	  }
	
	
}	

var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2500);    
} 
	

</script>




