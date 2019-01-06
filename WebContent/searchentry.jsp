<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="main-page-content view" id="tblSticky">
	<form method="GET" action="SearchEntryFromDB" style="top:20%">
	<table align="center">
		<col style="width:32%"/><col style="width:68%"/>
<%-- 		<tr><td colspan='2' align="center" style="pading 15px;">
			<h2>Welcome ${pageContext.request.remoteUser}!</h2>
			<c:if test="${pageContext.request.remoteUser}=='handler'">
				<c:out value="<h4>(You can only view dogs with handler)</h4>"></c:out>
			</c:if>
			</td></tr> --%>
		<tr><td colspan='2' align="center" style="pading 15px;"><h2>Search Entry</h2></td></tr>
		<tr><td><span class="label">SEARCH FOR:	</span></td><td><input type="text" name="search" class="text-space" placeholder="Type here" required></td></tr>
		<tr><td><span class="label">BY: 		</span></td><td>
				<select name="by" required>
					<option value="dog_id">Dog ID</option>
					<option value="dog_name" selected>Dog Name</option>
					<option value="dog_owner">Owner/Handler Name</option>
					<option value="dog_breed">Breed</option>
					<option value="dog_group">Group</option>
				</select>
		</td></tr>
		<tr><td colspan='2' align="center" style="padding:15px;"><input type="submit" value="Search" class="w3-button w3-orange addbtn"/><input type="hidden" name="all" value="0"></td></tr>
		
		<tr><td colspan='2' align="center" style="padding:2px 15px;"><a href="SearchEntryFromDB?search=1&by=dog_id&all=1" class="w3-button w3-green" style="text-decoration:none;">View All Entries</a></td></tr>
	</table>
	</form>
</div>
</body>
</html>