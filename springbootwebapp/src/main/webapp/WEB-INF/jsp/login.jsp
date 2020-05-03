<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<div class="container">
	<font color="red">${errorMessage}</font>
	<form method="post">
		Name : <input type="text" name="name">
		<br>
		Password : <input type="password" name="password">
		<br>
		<input type="submit">
	</form>
</div>

<%@ include file="common/footer.jspf" %>