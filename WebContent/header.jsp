<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
			<!-- <img class="mySlides w3-animate-left" src="images/img1.jpg" width="100%">
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
	</div> 
	
	<div id="myDropdown" class="dropdown-content" style="top:26.1%;left:18.1% important">
			  <button onclick="location.href='ShowListByGroup?day=one'">Day ONE</button><br>
		      <button onclick="location.href='ShowListByGroup?day=two'">Day TWO</button><br>
		      <button onclick="location.href='ShowListByGroup?day=three'">Day THREE</button><br>
		      <button onclick="location.href='ShowListByGroup?day=all'">Show ALL</button><br>
	</div>
	
	<div class="noparallax">
		<!-- upperbg <img src="images/img1.jpg" width="100%"> -->
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




