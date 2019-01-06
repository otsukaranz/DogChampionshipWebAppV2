<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<div class="main-page-content view" id="tblSticky">
	<form method="GET" action="UpdateEntryValue" class="profile">
		<table class="modify">
		<col style="width:32%"/><col style="width:68%"/>
		<tr style="padding: 5px 5px">
			<td>
				<c:choose>
				<c:when test="${empty entry.url}">
    				<img src="images/default.png" class="photo">
				</c:when>
				<c:when test="${fn:contains(entry.url,'http')}">
	  				<img src="${entry.url}" class="photo">
				</c:when>
				<c:otherwise>
					<img src="images/default.png" class="photo">
				</c:otherwise>
				</c:choose>
			</td>
			<td><h2>Edit the fields to update<br>
			<input type="submit" name="userClicked" value="Go back to search" class="w3-button w3-green btn" style="font-size:20px;width:50% !important;"/></h2></td></tr>
		<tr><td colspan='2'><input type="text" name="dogname" class="text-space" value="${entry.dogname}" /></td></tr>
		<tr><td colspan='2'>
							<input type="text" name="owner" class="text-space" value="${entry.owner}" style="width:80% !important;"/>
							<input type="checkbox" name="ishandler" class=".w3-check" value="True" style="padding:0px 15px !important;" id="isHandler" ${hh}><label for="isHandler"> Handler</label>
			</td></tr>
		<tr><td colspan='2'><input type="text" name="breed" class="text-space" value="${entry.breed}" required/></td></tr>
		<tr><td><span class="label">GROUP: 	</span></td><td><select name="group" required>
					<option value="sporting" ${sporting}>Sporting Dog</option>
					<option value="hounds" ${hounds }>Hounds</option>
					<option value="working" ${working }>Working Dog</option>
					<option value="terriers" ${terriers }>Terriers</option>
					<option value="toys" ${toys }>Toys</option>
					<option value="non-sporting" ${nonsporting }>Non-Sporting Dog</option>
					<option value="herding" ${herding }>Herding</option>
				</select></td></tr>
		<tr><td><span class="label">GENDER: 	</span></td><td>
				
					<input type="radio" name="gender" value="Male" id="male" ${ma} required ><label for="male" >Male</label>
					<input type="radio" name="gender" value="Female" id="female" ${fe}><label for="female">Female</label>
			
				</td></tr>
		<tr><td><span class="label">GAME: 		</span></td><td>
				
					<input type="radio" name="game" value="Class" id="class" ${cl} required><label for="class">Class</label>
					<input type="radio" name="game" value="Specialty" id="specialty" ${sp}><label for="specialty">Specialty</label>
				
				</td></tr>
		<tr><td><span class="label">Choose Date: 		</span></td><td>
				<span class="rad">
					<input type="checkbox" name="dayOne" value="true" id="dayOne" ${dayOne}><label for="dayOne">Jan 18,'19 (Fri)</label>
					<input type="checkbox" name="dayTwo" value="true" id="dayTwo" ${dayTwo}><label for="dayTwo" >Jan 19,'19 (Sat)</label>
					<input type="checkbox" name="dayThree" value="true" id="dayThree" ${dayThree}><label for="dayThree" >Jan 20,'19 (Sun)</label>
				</span>
				</td></tr>
		<tr><td colspan='2'><input type="email" name="email" class="text-space" value="${entry.email}" placeholder="No Email Availble"/></td></tr>		
		<tr><td colspan='2'><input type="text" name="photoURL" class="text-space" value="${entry.url}" placeholder="Photo URL(Paste new URL if you wish to change)"/></td></tr>		
		<tr>
			<td colspan='2' style="padding:15px;">
				<input type="submit" name="userClicked" value="Update" class="w3-button w3-orange btn" onclick="updateEntry()"/>
				<input type="submit" name="userClicked" value="Delete" class="w3-button w3-red btn" onclick="deleteEntry()"/>
			</td>
		</tr>
		</table>
	</form>
<script>

	function updateEntry(){
		if(confirm('Are you sure you want to UPDATE Entry?')){
			alert('Update Successful!');
			return true;
		} else {
			return false;
		}
	}

	function deleteEntry(){
		if(confirm('Are you sure you want to DELETE Entry?')){
			alert('Delete Successful!');
			return true;
		} else {
			return false;
		}
	}
</script>


</div>
</body>
</html>