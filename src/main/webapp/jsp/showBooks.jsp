<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" contentType="text/html; ISO-8859-1"
	pageEncoding="iso-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
th, td, table {
	background-color: #FFFF00;
	font-family:georgia,garamond,serif;
	color: #008000;
	border: 2px solid black;
	padding: 0px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Books</title>
</head>
<body>
	<h1>List of Books</h1>
	<table>
		<tr>
			<th>Book ID</th>
			<th>Title</th>
			<th>Author</th>
		</tr>
		<tr>
			<c:forEach items="${books}" var="book">
				<tr>
					<td>${book.bid}</td>
					<td>${book.title}</td>
					<td>${book.author}</td>
				</tr>
			</c:forEach>
		</tr>
	</table>
	<a href="/">Home</a>
	<a href="/addBook">Add Book</a>
	<a href="/showCustomers">List Customers</a>
	<a href="/showLoans">List Loans</a>

</body>
</html>