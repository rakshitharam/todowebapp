<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		<form method="post">
			<fieldset class="form-group">
				<label>Description</label> <input name="desc" type="text"
					class="form-control" required="required"/>
			</fieldset>
			<button type="submit" class="btn btn-success">Add</button>
		</form>
	</div>
	<script src="webjars/jquery/3.5.0/jquery.min.js"></script>
	<script src="webjars/bootstrap/4.4.1-1/js/bootstrap.min.js"></script>
</body>
</html>