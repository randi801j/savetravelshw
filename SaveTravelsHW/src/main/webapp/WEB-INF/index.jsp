<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Save Travels</title>
</head>
<body style="margin:10vw">
<h1>Save Travels</h1>
<table class="table table-striped tbale-bordered">
	<thead>
		<tr>
			<th class="text-center">Expense</th>
			<th class="text-center">Vendor</th>
			<th class="text-center">Amount</th>
			<th class="text-center">Action</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="expense" items="${expenses}">
			<tr>
				<td><a href="/expenses/<c:out value= "${expense.id}"></c:out>"><c:out value="${expense.name}"></c:out></a></td>
				<td><c:out value= "${expense.vendor}"/></td>
				<td><c:out value= "${expense.amount}"/></td>
				<td><a href="/edit/${expense.id}">Edit</a> <a href="/expenses/delete/${expense.id }">Delete</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<br>
<h2>Add An Expense:</h2>
<form:form action="/expenses" mode="post" modelAttribute="expense">
	<div>
		<form:label path="name"> Expense Name: </form:label><br>
		<form:errors path="name" class="text-danger"/>
		<form:input path="name" style= "width:250px;"/>
		
	</div>
	<div>
		<form:label path="vendor"> Vendor: </form:label><br>
		<form:errors path="vendor" class="text-danger"/>
		<form:input path="vendor" style= "width:250px;"/>
		
	</div>
	<div>
		<form:label path="amount"> Amount: </form:label><br>
		<form:errors path="amount" class="text-danger"/>
		<form:input path="amount" style= "width:250px;"/>
		
	</div>
	<div>
		<form:label path="description"> Description: </form:label>
		<form:errors path="description" class="text-danger"/>
		<form:textarea path="description" rows="3" style= "width:250px;" />
		
	</div>
	<div>
		<input type="submit" value="submit" />
	</div>
</form:form>
</body>
</html>