<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="${pageContext.request.contextPath}/UpdateSupplier" modelAttribute="supplier" method="post">

<table>
	<tr>
		<td colspan="2">Updating Supplier</td>
	</tr>
	<tr>
		<td>Supplier ID</td>
		<!--<td><input type="text" name="supId"/></td>-->
		<td><form:input path="SupId"/></td>
	</tr>
	<tr>
		<td>Supplier Name</td>
		<!-- <td><input type="text" name="supName"/></td> -->
		<td><form:input path="SupName"/></td>
	</tr>
	<tr>
		<td>Supplier Desc</td>
		<!-- <td><input type="text" name="supDesc"/></td> -->
		<td><form:input path="SupDesc"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="Supplier"/></center>
		</td>
	</tr>
</table>

</form:form>

<table cellspacing="2" align="center">
<tr bgcolor="blue">
	<td>Supplier ID</td>
	<td>Supplier Name</td>
	<td>Supplier Description</td>
	<td>Operation</td>
</tr>
<c:forEach items="${supplierList}" var="supplier">
	<tr bgcolor="brown">
		<td>${supplier.SupId}</td>
		<td>${supplier.SupName}</td>
		<td>${supplier.SupDesc}</td>
		<td>
			<a href="<c:url value="deleteSupplier/${supplier.supId}"/>">DELETE</a>
			<a href="<c:url value="updateSupplier/${supplier.supId}"/>">UPDATE</a>
		</td>
	</tr>
</c:forEach>

</table>
</body>
</html>