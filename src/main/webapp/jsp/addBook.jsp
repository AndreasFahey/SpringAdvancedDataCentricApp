<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book</title>
</head>
<body>
	<form:form modelAttribute="bookAdd">
		<h1>Add Book</h1>
		<table>
			<tr>
				<td>Title:</td>
				<td><form:input path="title"></form:input></td>
				<td id="error"><form:errors path="title"></form:errors></td>
			</tr>
			<tr>
				<td>Author:</td>
				<td><form:input path="author"></form:input></td>
				<td id="error"><form:errors path="author"></form:errors></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="Add" /></td>
			</tr>
		</table>
		<a href="/">Home</a>
		<a href="/addBook">Add Book</a>
		<a href="/addCustomer">Add Customer</a>
		<a href="/newLoan">New Loan</a>
	</form:form>

</body>
</html>