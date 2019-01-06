<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<div class="main-page-content view" id="tblSticky" style="top:145% !important;background-color:rgba(247, 221, 196, 0.9) !important;">	
	<table class="table winnerHead1">
		<thead class="navbar2">
			<tr><th colspan="3" style="text-align:center;color:rgb(255, 182, 105);">
					Congratulations to the following winners:
			</th></tr>
			<tr class="border_bottom"><th>BREED</th><th>DOG NAME</th><th>VIEW DOG</th></tr>	
		</thead>
		<tbody>
			<c:forEach var="list" items="${list}">
					<div id="${list.entryid}" class="${list.entryid}" style="
				 		    position: fixed;
						    width: 98.5vw;
						    height: 100vh;
						    background-color: rgba(36, 29, 29, 0.34);
						    left: 0px;
						    top: 0px;
						    z-index: 999;
						    display: none;
						    "
						    onclick="(document.getElementById('${list.entryid}').style.display= 'none')"
				 	>
				 	
				 		<div style="
				 			    position: relative;
							    top: 10%;
							    left: 33.5%;
							    width: 33%;
							    height: 75%;
							    background: antiquewhite;
				 			
				 		">
				 			<img src="${list.url}" style="width:100%;height:223px">
				 			<h3>BEST OF BREED</h3>
				 			<h4>Name: ${list.dogname}</h4>
				 			<h4>Breed: ${list.breed}</h4>
				 			<h4>Owner: ${list.owner}</h4>
				 			<h4>Gender: ${list.gender}</h4>
				 			<h4>Group: ${list.group}</h4>
				 			<h4>Game: ${list.game}</h4>
				 			<img src="images/bestofbreedaward.png" style="
			 												    position: relative;
															    top: -386px;
   																left: 184px;
				 			">
				 			<!-- <img src="https://www.stickershoppe.com/mm5/graphics/00000001/BR34.jpg"> -->
				 		</div>
					 </div>
				<tr><td>${list.breed}</td><td>${list.dogname}</td><td><button onclick="(document.getElementById('${list.entryid}').style.display= 'block')">View</button></td></tr>
				
			</c:forEach>
		</tbody>
	 </table>
</div>
