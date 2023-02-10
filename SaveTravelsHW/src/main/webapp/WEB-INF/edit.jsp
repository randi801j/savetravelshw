<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Edit Expenses</h1><a href="/expenses/">Go Back</a>

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