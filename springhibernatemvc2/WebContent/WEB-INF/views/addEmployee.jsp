<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring MVC Form Handling</title>
	</head>
	<body>
		<h2>Add Product Data</h2>
		<form:form method="POST" action="/springhibernatemvc/save.html">
	   		<table>
			    <tr>
			        <td><form:label path="id">Product ID:</form:label></td>
			        <td><form:input path="id" value="${prod.id}" /></td>
			    </tr>
			    <tr>
			        <td><form:label path="name">Product Name:</form:label></td>
			        <td><form:input path="name" value="${prod.name}"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="cost">Product Cost:</form:label></td>
			        <td><form:input path="cost" value="${prod.cost}"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="type">Transaction type:</form:label></td>
			        <td><form:input path="type" value="${prod.type}"/></td>
			    </tr>
			    
			   
			    <tr>
			      <td colspan="2"><input type="submit" value="Submit"/></td>
		      </tr>
			</table> 
		</form:form>
		
  <c:if test="${!empty employees}">
		<h2>List Products</h2>
	<table align="left" border="1">
		<tr>
			<th>Product ID</th>
			<th>Product Name</th>
			<th>Date of Delivery</th>
			<th>Transaction type</th>
			
			<th>Actions on Row</th>
		</tr>

		<c:forEach items="${employees}" var="prod">
			<tr>
				<td><c:out value="${prod.id}"/></td>
				<td><c:out value="${prod.name}"/></td>
				<td><c:out value="${prod.cost}"/></td>
				<td><c:out value="${prod.type}"/></td>
				
				<td align="center"><a href="edit.html?id=${prod.id}">Edit</a> | <a href="delete.html?id=${prod.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>
	</body>
</html>