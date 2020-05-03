<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
	<div class="container">
		<h1>Your todos are</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Description</th>
					<th>Date</th>
					<th>Is it done?</th>
					<th>Update</th>
					<th>Delete</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.description}</td>
						<td><fmt:formatDate pattern="dd/MM/yyyy"
									value="${todo.targetDate}" /></td>
						<td>${todo.done}</td>
						<td><a type="button" class="btn btn-success"  href="/update-todo?id=${todo.id}">UPDATE</a></td>
						<td><a type="button" class="btn btn-warning"  href="/delete-todo?id=${todo.id}">DELETE</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
		<a class="button" href="/add-todo">Add a Todo</a>
	</div>
	<%@ include file="common/footer.jspf" %>