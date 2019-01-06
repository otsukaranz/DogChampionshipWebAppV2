<%@ include file="handlerheader.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="main-page-content view" style="overflow:hidden;top:1% !important;">
		
		<form method="GET" action="AddEntryToDB" >
		<input type="hidden" name="fromHandler" value="true">
		<table>
		<col style="width:32%"/><col style="width:68%"/>
		<tr><td colspan='2'><h2>Fill up the Registration Form</h2></td></tr>
		<tr><td colspan='2'><input type="text" name="dogname" class="text-space" placeholder="Dog Name" required/></td></tr>
		<tr><td colspan='2'>
							<input type="text" name="owner" class="text-space" placeholder="Handler Name" value="${pageContext.request.remoteUser}" readonly="readonly" required/>
							<!-- <input type="checkbox" name="ishandler" class=".w3-check" value="True" id="isHandler" style="padding:0px 15px !important;"><label for="isHandler" > Handler?</label> -->
							<c:choose>
								<c:when test ="${sessionScope.owner == true}">
									<input type="hidden" name="ishandler" value="False">
								</c:when>
								<c:otherwise>
									<input type="hidden" name="ishandler" value="True">
								</c:otherwise> 
							</c:choose>
			</td></tr>
		<tr><td colspan='2'><input type="text" name="breed" class="text-space" placeholder="Breed" required/></td></tr>
		<tr><td><span class="label">GROUP: 	</span></td><td><select name="group" required>
					<option selected></option>
					<option value="sporting">Sporting Dog</option>
					<option value="hounds">Hounds</option>
					<option value="working">Working Dog</option>
					<option value="terriers">Terriers</option>
					<option value="toys">Toys</option>
					<option value="non-sporting">Non-Sporting Dog</option>
					<option value="herding">Herding</option>
				</select></td></tr>
		<tr><td><span class="label">GENDER: 	</span></td><td>
				<span class="rad">
					<input type="radio" name="gender" value="Male" id="male" class=".w3-radio" required><label for="male" >Male</label>
					<input type="radio" name="gender" value="Female" id="female" class=".w3-radio" ><label for="female">Female</label>
				</span>
				</td></tr>
		<tr><td><span class="label">GAME: 		</span></td><td>
				<span class="rad">
					<input type="radio" name="game" value="Class" id="class" required><label for="class">Class</label>
					<input type="radio" name="game" value="Specialty" id="specialty" ><label for="specialty">Specialty</label>
				</span>
				</td></tr>
		<tr><td><span class="label">Choose Date: 		</span></td><td>
				<span class="rad">
					<input type="checkbox" name="dayOne" value="true" id="dayOne" ><label for="dayOne">Jan 18,'19 (Fri)</label>
					<input type="checkbox" name="dayTwo" value="true" id="dayTwo" ><label for="dayTwo">Jan 19,'19 (Sat)</label>
					<input type="checkbox" name="dayThree" value="true" id="dayThree" ><label for="dayThree">Jan 20,'19 (Sun)</label>
				</span>
				</td></tr>
		<tr><td colspan='2'><input type="email" name="email" class="text-space" placeholder="Owner's Email" required/></td></tr>		
		<tr><td colspan='2'><input type="text" name="photoURL" class="text-space" placeholder="Photo URL(Optional)"/></td></tr>		
		<tr><td colspan='2' align="center" style="padding:15px;"><input type="submit" value="Add Entry" class="w3-button w3-orange addbtn"/></td></tr>
		</table>
	</form>
	</div>
	
	<!-- This scriptlet tag will enable my javascript when successfully added entry to DB  -->
	
		<c:if test="${added == 'success'}">
			<div id="snackbar" >Entry Successfully Added to Database!</div>
				<script type="text/javascript">
					function myFunction(){
						var e = document.getElementById("snackbar");
						e.className="show";
						setTimeout(function(){e.className=e.className.replace("show","")}, 3000)}
				</script>
			<body onload="myFunction()">
		</c:if>
	
	