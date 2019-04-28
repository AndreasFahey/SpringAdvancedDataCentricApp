<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="i" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" contentType="text/html; ISO-8859-1"
	pageEncoding="iso-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>Show Customers</title>
</head>
<body>

	<h1>Customers</h1>
	<c:forEach items="${customers}" var="c">
		<h2>${c.cId}${c.cName}</h2>
                      Loan Period: ${c.loanPeriod}
                      
                      
                      <h3>${c.cName}'sLoan</h3>
		<table>
			<tr>
				<th>Loan ID</th>
				<th>Book ID</th>
				<th>Title</th>
				<th>Author</th>
			</tr>

			<i:forEach items="${c.loans}" var="loans">
				<tr>
					<td>${loans.lid}</td>
					<td>${loans.book.bid}</td>
					<td>${loans.book.title}</td>
					<td>${loans.book.author}</td>
				</tr>
			</i:forEach>


		</table>
	</c:forEach>


	<a href="/">Home</a>
	<a href="/addBook">Add Book</a>
	<a href="showCustomers">List Customers</a>
	<a href="showLoans">List Loans</a>
	<a href="/logout">Logout</a>

</body>
</html>