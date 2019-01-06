<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<div id="tblSticky" 
		style="
			background-color:rgba(247, 221, 196, 0.9);			
		">
		<table class="headerview">
		
			<thead>
				<tr><th><div id="handlerHeader" style="text-align:center;">
						<h2>Hey <b>${pageContext.request.remoteUser}</b>! Welcome To Handler's Page 
							<a href="LogoutAccess" class="w3-button w3-green hbtn" style="width: 100px !important;height: 34px !important;font-size: 15px;">Logout</a></h2>
						</div></th></tr>
				<tr><th>
				<div class="sidebar">
					<a href="handlerAddDog.jsp" class="w3-button w3-green hbtn" target="window">Add Entry to My Dogs</a>
					<a href="SearchEntryFromDB?fromHandler=true&all=0" class="w3-button w3-green hbtn" target="window">View My Dogs List</a>
					<a href="GetDogsOnDay?dayOne=true" class="w3-button w3-green hbtn" target="window">Show All Day 1 Entries</a>			
					<a href="GetDogsOnDay?dayTwo=true" class="w3-button w3-green hbtn" target="window">Show All Day 2 Entries</a>			
					<a href="GetDogsOnDay?dayThree=true" class="w3-button w3-green hbtn" target="window">Show All Day 3 Entries</a>			
				</div>
				</th></tr>
			</thead>
			<tbody>
				<tr><td><div class="iframe-container">
					
		   	 		<iframe name="window" frameborder="0" height="auto">
		   	 		
		   	 		</iframe>
		    	</div>
		    	</td></tr>
		    </tbody>
    	</table>
	</div>
<!-- <script>
window.onscroll = function() {scrollFunction()};
function scrollFunction() {
	
	  var navbar = document.getElementById("tblSticky");
	  var sticky = navbar.offsetTop;
		
	  if (document.body.scrollTop > 138 || document.documentElement.scrollTop > 138) {
	    	navbar.classList.add("sticky1");

	    	
	  } else {
			navbar.classList.remove("sticky1");

	  }
	}
</script> -->
</body>
</html>