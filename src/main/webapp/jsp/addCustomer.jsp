<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Customer</title>
</head>
<body>
	<form:form modelAttribute="custAdd">
		<h1>Customer Book</h1>
		<table id="addTable">
			<tr>
				<td>Customer Name:</td>
				<td><form:input path="cName"></form:input></td>
				<td><form:errors path="cName"></form:errors></td>
			</tr>
			<tr>
				<td>Loan Duration (days):</td>
				<td><form:input path="loanPeriod"></form:input></td>
				<td><form:errors path="loanPeriod"></form:errors></td>
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