<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="main-page-content view">
	<form method="POST" action="j_security_check" style="top:20%">
		
		<table align="center">
			<col style="width:32%"/><col style="width:68%"/>
			<tr><td colspan='2' align="center" style="pading 15px;"><h2>Login Required</h2></td></tr>
			<tr><td>Username: </td><td><input type="text" name="j_username" required></td></tr>
			<tr><td>Password: </td><td><input type="password" name="j_password" required></td></tr>
			<tr><td colspan='2' align="center" style="padding:2px 15px;"><input type="submit" class="w3-button w3-orange btn" value="Access Handler Page"></td></tr>
			<tr><td colspan='2' align="center" style="padding:2px 15px;"><a href="addloginpage.jsp" class="w3-button w3-green" style="text-decoration:none;">Create Account</a></td></tr>
		</table>
	</form>	

</div>
</body>
</html>