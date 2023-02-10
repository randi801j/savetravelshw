<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="margin: 10vw">

<h1> Expense Details</h1>
<p><a href="/expenses/">Go Back</a></p>
<table>
	<tbody>
		<tr>
			<td> Expense Name:</td>
			<td><c:out value="${expense.name}"></c:out></td>
		</tr>
		<tr>
			<td> Expense Description:</td>
			<td><c:out value="${expense.description}"></c:out></td>
		</tr>
		<tr>
			<td> Vendor</td>
			<td><c:out value="${expense.vendor}"></c:out></td>
		</tr>
		<tr>
			<td> Amount Spent:</td>
			<td><c:out value="${eexpense.amount}"></c:out></td>
		</tr>
	
	</tbody>
</table>

</body>
</html>