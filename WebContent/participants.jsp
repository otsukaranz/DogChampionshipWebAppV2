<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Fix scrolling part of the tables -->


<div class="main-page-content view" id="tblSticky" style="background-color:rgba(247, 221, 196, 0.9) !important;">
		<table class="sporting table">
		<thead class="navbar2">
		<tr><th colspan="6" style="text-align:center;color:rgb(255, 182, 105);">SPORTING DOGS</th></tr>
		<tr class="border_bottom">
			<th>Total</th>
			<th>Breed</th>
			<th>C-Male</th>
			<th>C-Female</th>
			<th>S-Male</th>
			<th>S-Female</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="Sporting" items="${Sporting}">
		<tr>
			<td><c:out value="${Sporting.total}"></c:out></td>
			<td><c:out value="${Sporting.dog_breed}"></c:out></td>
			<td><c:out value="${Sporting.classMale}"></c:out></td>
			<td><c:out value="${Sporting.classFemale}"></c:out></td>
			<td><c:out value="${Sporting.specialtyMale}"></c:out></td>
			<td><c:out value="${Sporting.specialtyFemale}"></c:out></td>
		</tr>
		</c:forEach>	
		</tbody>
	</table>
	
	<table class="hounds table">
		<thead class="navbar2">
		<tr><th colspan="6" style="text-align:center;color:rgb(255, 182, 105);">HOUNDS</th></tr>
		<tr class="border_bottom">
			<th>Total</th>
			<th>Breed</th>
			<th>C-Male</th>
			<th>C-Female</th>
			<th>S-Male</th>
			<th>S-Female</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="Hounds" items="${Hounds}">
		<tr>
			<td><c:out value="${Hounds.total}"></c:out></td>
			<td><c:out value="${Hounds.dog_breed}"></c:out></td>
			<td><c:out value="${Hounds.classMale}"></c:out></td>
			<td><c:out value="${Hounds.classFemale}"></c:out></td>
			<td><c:out value="${Hounds.specialtyMale}"></c:out></td>
			<td><c:out value="${Hounds.specialtyFemale}"></c:out></td>
		</tr>
		</c:forEach>	
		</tbody>
	</table>
	
	<table class="working table table-fixed">
		<thead class="navbar2">
		<tr><th colspan="6" style="text-align:center;color:rgb(255, 182, 105);">WORKING DOGS</th></tr>
		<tr class="border_bottom">
			<th>Total</th>
			<th>Breed</th>
			<th>C-Male</th>
			<th>C-Female</th>
			<th>S-Male</th>
			<th>S-Female</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="Working" items="${Working}">
		<tr>
			<td><c:out value="${Working.total}"></c:out></td>
			<td><c:out value="${Working.dog_breed}"></c:out></td>
			<td><c:out value="${Working.classMale}"></c:out></td>
			<td><c:out value="${Working.classFemale}"></c:out></td>
			<td><c:out value="${Working.specialtyMale}"></c:out></td>
			<td><c:out value="${Working.specialtyFemale}"></c:out></td>
		</tr>
		</c:forEach>	
		</tbody>
	</table>
	
	<table class="terrier table table-fixed">
		<thead class="navbar2">
		<tr><th colspan="6" style="text-align:center;color:rgb(255, 182, 105);">TERRIER</th></tr>
		<tr class="border_bottom">
			<th>Total</th>
			<th>Breed</th>
			<th>C-Male</th>
			<th>C-Female</th>
			<th>S-Male</th>
			<th>S-Female</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="Terrier" items="${Terrier}">
		<tr>
			<td><c:out value="${Terrier.total}"></c:out></td>
			<td><c:out value="${Terrier.dog_breed}"></c:out></td>
			<td><c:out value="${Terrier.classMale}"></c:out></td>
			<td><c:out value="${Terrier.classFemale}"></c:out></td>
			<td><c:out value="${Terrier.specialtyMale}"></c:out></td>
			<td><c:out value="${Terrier.specialtyFemale}"></c:out></td>
		</tr>
		</c:forEach>	
		</tbody>
	</table>
	
	<table class="toys table table-fixed">
		<thead class="navbar2">
		<tr><th colspan="6" style="text-align:center;color:rgb(255, 182, 105);">TOYS</th></tr>
		<tr class="border_bottom">
			<th>Total</th>
			<th>Breed</th>
			<th>C-Male</th>
			<th>C-Female</th>
			<th>S-Male</th>
			<th>S-Female</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="Toys" items="${Toys}">
		<tr>
			<td><c:out value="${Toys.total}"></c:out></td>
			<td><c:out value="${Toys.dog_breed}"></c:out></td>
			<td><c:out value="${Toys.classMale}"></c:out></td>
			<td><c:out value="${Toys.classFemale}"></c:out></td>
			<td><c:out value="${Toys.specialtyMale}"></c:out></td>
			<td><c:out value="${Toys.specialtyFemale}"></c:out></td>
		</tr>
		</c:forEach>	
		</tbody>
	</table>
	
	<table class="nonsporting table table-fixed">
		<thead class="navbar2">
		<tr><th colspan="6" style="text-align:center;color:rgb(255, 182, 105);">NON SPORTING</th></tr>
		<tr class="border_bottom">
			<th>Total</th>
			<th>Breed</th>
			<th>C-Male</th>
			<th>C-Female</th>
			<th>S-Male</th>
			<th>S-Female</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="NonSporting" items="${NonSporting}">
		<tr>
			<td><c:out value="${NonSporting.total}"></c:out></td>
			<td><c:out value="${NonSporting.dog_breed}"></c:out></td>
			<td><c:out value="${NonSporting.classMale}"></c:out></td>
			<td><c:out value="${NonSporting.classFemale}"></c:out></td>
			<td><c:out value="${NonSporting.specialtyMale}"></c:out></td>
			<td><c:out value="${NonSporting.specialtyFemale}"></c:out></td>
		</tr>
		</c:forEach>	
		</tbody>
	</table>
	
	<table class="herding table table-fixed">
		<thead class="navbar2">
		<tr><th colspan="6" style="text-align:center;color:rgb(255, 182, 105);">HERDING</th></tr>
		<tr class="border_bottom">
			<th>Total</th>
			<th>Breed</th>
			<th>C-Male</th>
			<th>C-Female</th>
			<th>S-Male</th>
			<th>S-Female</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="Herding" items="${Herding}">
		<tr>
			<td><c:out value="${Herding.total}"></c:out></td>
			<td><c:out value="${Herding.dog_breed}"></c:out></td>
			<td><c:out value="${Herding.classMale}"></c:out></td>
			<td><c:out value="${Herding.classFemale}"></c:out></td>
			<td><c:out value="${Herding.specialtyMale}"></c:out></td>
			<td><c:out value="${Herding.specialtyFemale}"></c:out></td>
		</tr>
		</c:forEach>	
		</tbody>
	</table>
	
</div>
</body>
</html>