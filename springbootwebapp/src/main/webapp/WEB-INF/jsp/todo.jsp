<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link href="webjars/bootstrap/4.4.1-1/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<form:form method="post" modelAttribute="todo">
		<form:hidden path="id"/>
			<fieldset class="form-group">
				<form:label path="description">Description</form:label> 
				<form:input path="description" type="text"
					class="form-control" required="required"/>
					<form:errors path="description" cssClass="text-warning"></form:errors>
			</fieldset>
			<fieldset class="form-group">
				<form:label path="targetDate">Target Date</form:label> 
				<form:input path="targetDate" type="text"
					class="form-control" required="required"/>
					<form:errors path="targetDate" cssClass="text-warning"></form:errors>
			</fieldset>
			<button type="submit" class="btn btn-success">Add</button>
		</form:form>
	</div>
	<script src="webjars/jquery/3.5.0/jquery.min.js"></script>
	<script src="webjars/bootstrap/4.4.1-1/js/bootstrap.min.js"></script>
	<script src="webjars/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.js"></script>
	<script> $('#targetDate').datepicker({
		format : 'dd/mm/yyyy'
	});</script>
	
</body>
</html>