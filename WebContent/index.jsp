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
<style>
	.parallax {
		background-image: url("images/img1.jpg");
		min-height: 110vh; 
		background-attachment: fixed;
	    background-position: center;
	    background-repeat: no-repeat;
	    background-size: cover;
	    z-index: -2
	}
</style>
<!-- <script>
window.onbeforeunload = function () {
	  window.scrollTo(0, 0);
}
</script> -->
</head>
<body>

	<div class="contents" id="blur2">
	<h3 class="bold">
		<span 
			style="
				/* color: rgb(3, 251, 247); */
				color: rgba(247, 137, 27, 0.99);
				font-family: 'Raleway', sans-serif;
		">Your Dog</span> Is Awesome!</h3>
	 	<p class="sub">Join us and showcase your dog's beauty in this year's Dog Championship.</p>
	 	<div class="sub btn-tag"><a class="register" href="register.jsp">Register now! &rarr;</a></div>
	</div>
	<div class="header">
		<div class="hbContent">
			<h1>Show Advertisement Here</h1>
			<img class="mySlides w3-animate-left" src="images/banner1.PNG" width="100%">
			<img class="mySlides w3-animate-left" src="images/banner2.PNG" width="100%">
			<!-- <img class="mySlides w3-animate-left" src="images/img2.jpg" width="100%">
			<img class="mySlides w3-animate-left" src="images/img3.jpg" width="100%">
			<img class="mySlides w3-animate-left" src="images/img4.jpg" width="100%"> -->
		</div>
	</div>
	
	<div id="navbar">
		<a id="logo" href="#" style="pointer-events:none;">Dog Championship 2018</a>
		<div id="navbar-right">
			<a id="nav-btn" href="index.jsp">HOME</a> 
			<a id="nav-btn" href="searchentry.jsp">SEARCH</a>
			<a onclick="dropdownBtn()" class="dropbtn default">PARTICIPANTS</a>
			<a id="nav-btn" href="HandlerPage">HANDLERS</a>
			<a id="nav-btn" href="winnerheader.jsp">WINNERS</a>
		</div>
	</div> 
	<div id="myDropdown" class="dropdown-content" style="top:26.1%">
		      <button onclick="location.href='ShowListByGroup?day=one'">Day ONE</button><br>
		      <button onclick="location.href='ShowListByGroup?day=two'">Day TWO</button><br>
		      <button onclick="location.href='ShowListByGroup?day=three'">Day THREE</button><br>
		      <button onclick="location.href='ShowListByGroup?day=all'">Show ALL</button><br>
	</div>
	
	<div class="parallax">
	</div>
	<div class="footer" style="height:2%;text-align:center;">
		Created By: Mark Anthony Prado
	</div>
	
</body>
<script>
// When the user scrolls down 80px from the top of the document, resize the navbar's padding and the logo's font size
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
        document.getElementById("blur2").style.opacity = "1";
        myDropdown.style.top="39%";
  } else {
	    navbar.style.background = "";
		navbar.style.boxShadow = "0 0 0px 0px";
		navbar.classList.remove("sticky");
		document.getElementById("logo").style.fontSize = "80px";
	    document.getElementById("blur2").style.opacity = "0";
	    myDropdown.style.top="26.1%";
		
  }
  
  
/*   if (document.body.scrollTop > 112 || document.documentElement.scrollTop > 112) {
    document.getElementById("navbar").style.padding = "0px";
    document.getElementById("logo").style.fontSize = "40px";
    document.getElementById("blur1").style.opacity = "1";
    document.getElementById("blur2").style.opacity = "1";
    navbar.classList.add("sticky")
  } else {
    document.getElementById("navbar").style.padding = "172px 0px 30px 0px";
    document.getElementById("logo").style.fontSize = "100px";
    document.getElementById("blur1").style.opacity = "0";
    document.getElementById("blur2").style.opacity = "0";
    navbar.classList.remove("sticky");
  } */
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

</html>