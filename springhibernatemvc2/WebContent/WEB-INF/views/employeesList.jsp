<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All Employees</title>
</head>
<body>
<h1>List Employees</h1>
<h3><a href="add.html">Add More Products</a></h3>

<c:if test="${!empty employees}">
	<table align="left" border="1">
		<tr>
			<th>Product ID</th>
			<th>Product Name</th>
			<th>Product cost</th>
			<th>Transaction type</th>
			
		</tr>

		<c:forEach items="${employees}" var="prod">
			<tr>
				<td><c:out value="${prod.id}"/></td>
				<td><c:out value="${prod.name}"/></td>
				<td><c:out value="${prod.cost}"/></td>
				<td><c:out value="${prod.type}"/></td>
				
			</tr>
		</c:forEach>
	</table>
</c:if>
</body>
</html>