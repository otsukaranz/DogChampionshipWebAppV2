<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="main-page-content view" style="overflow-y:auto;">
	<form method="POST" action="AddLogin" style="top:20%">	
		<table align="center">
		<col style="width:32%"/><col style="width:68%"/>
			<tr><td colspan='2' align="center" style="pading 15px;"><h2>Fill up to Create Account</h2></td></tr>
			<tr><td>Username: </td><td><input type="text" name="username" required></td></tr>
			<tr><td>Password: </td><td><input type="password" name="password" required></td></tr>
			<tr><td>Select Role:</td>
				<td>
					<!-- <input type="radio" name="role" value="admin" id="admin" required><label for="admin">Admin</label> -->
					<input type="radio" name="role" value="owner" id="owner" required><label for="owner">Owner</label>
					<!-- <input type="radio" name="role" value="guest" id="guest" required><label for="guest">Guest</label> -->
					<input type="radio" name="role" value="handler" id="handler" required><label for="handler">Handler</label>
				</td></tr>
			<tr><td colspan='2' align="center" style="padding:2px 15px;"><input type="submit" class="w3-button w3-orange btn" value="Register"></td></tr>
	</table>
	</form>	
	
		<c:choose>
		<c:when test="${added == 'success'}">
			<div id="snackbar">Login Successfully Registered!</div>
			<script type="text/javascript">
				function myFunction(){
					var e = document.getElementById("snackbar");
					e.className="show";
					setTimeout(function(){e.className=e.className.replace("show","")}, 3000)}
			</script>
			<body onload="myFunction()">
		</c:when>
		<c:when test="${added == 'exists'}">
			<div id="snackbar" style="background-color:#f44336">Username already EXISTS!</div>
			<script type="text/javascript">
				function myFunction(){
					var e = document.getElementById("snackbar");
					e.className="show";
					setTimeout(function(){e.className=e.className.replace("show","")}, 3000)}
			</script>
			<body onload="myFunction()">
		</c:when>
		</c:choose>
</div>
</body>
</html>