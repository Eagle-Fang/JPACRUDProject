<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VET TEC Coding Bootcamp List| Add Bootcamp</title>
<link rel="stylesheet"
	href=" https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

</head>
<body>

	<%@ include file="navbar.jsp"%>
	<br>
	<br>
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h1 class="display-4">Displaying Add Results</h1>
		</div>
	</div>

	<div class="alert alert-success">
		<strong>Success!</strong> Add Successful.
	</div>

	<table class="table table-hover table-dark">
		<thead>
			<tr>
				<th scope="col"></th>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">City</th>
				<th scope="col">State</th>
				<th scope="col">Language</th>
				<th scope="col">Duration</th>
				<th scope="col">Venue</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach var="bootcamp" items="${bootcamps}">
				<tr>
					<th scope="row"></th>
					<td>${bootcamp.id}</td>
					<td>${bootcamp.name}</td>
					<td>${bootcamp.city}</td>
					<td>${bootcamp.state}</td>
					<td>${bootcamp.language}</td>
					<td>${bootcamp.duration} Weeks</td>
					<td>${bootcamp.venue}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	</ul>
</body>
</html>