<%@ include file="handlerheader.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="WEB-INF/MyTag.tld" prefix="cust" %>

<c:if test="${empty pageContext.request.remoteUser}">
	<script>
		window.top.location.reload();
	</script>
</c:if>
<div class="main-page-content view" id="tblSticky" style="top:5% !important;background-color:rgba(247, 221, 196, 0.9) !important;">
	<table class="handlerTable">
		<col style="width:12%"/>
		<col style="width:20%"/>
		<col style="width:18%"/>
		<col style="width:20%"/>
		<col style="width:15%"/>
		<col style="width:12%"/>
		<col style="width:14%"/>
		<col style="width:11%"/>
		<col style="width:20%"/>
		<col style="width:10%"/>
		<thead class="navbar2">
			<tr><th colspan="10"><div style="text-align:center !important;margin:0 !important;">
						<c:out value="${zero}"/>
						<!-- <a href="searchentry.jsp" class="w3-button w3-green" style="text-decoration: none;padding:2px 16px !important;">Go Back</a> -->
					</div>
				</th></tr>
			<tr>
				<th>Entry ID</th>
				<th>Dog Name</th>
				<th>Owner/Handler</th>
				<th>Breed</th>
				<th>Group</th>
				<th>Gender</th>
				<th>Game</th>
				<th>Handler</th>
				<th>Dog Shows</th>
				<th>Modify</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="list" items="${list}">
		
		<tr id="${list.entryid}">
			
			<td><c:out value="${list.entryid}"></c:out></td>
			<td><c:out value="${list.dogname}"></c:out></td>
			<td><c:out value="${list.owner}"></c:out></td>
			<td><c:out value="${list.breed}"></c:out></td>
			<td><c:out value="${list.group}"></c:out></td>
			<td><c:out value="${list.gender}"></c:out></td>
			<td><c:out value="${list.game}"></c:out></td>
			<td><c:out value="${list.isHandler}"></c:out></td>
			<td><cust:CustomTag dogId="${list.entryid}"></cust:CustomTag></td>
			<td style="text-align:center;">
			<a href="EditEntry?dogid=${list.entryid}&fromHandler=true"><img src="images/editicon.jpg" width="18px" height="18px"></a>
			</td>
			
		</tr>
		</c:forEach>	
			
		</tbody>
	</table>
</div>

</body>
</html>