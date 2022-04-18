<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VET TEC Coding Bootcamp List | Bootcamp Search</title>
<link rel="stylesheet"
	href=" https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

</head>
<body>

	<%@ include file="navbar.jsp"%>
	<br>
	<br>
	<h3 class="title">VET TEC Coding Bootcamp details</h3>
	<br>

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
		<c:choose>
			<c:when test="${! empty bootcamps }">

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
			</c:when>
		</c:choose>


		<c:choose>
			<c:when test="${! empty bootcamp }">

				<tbody>
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
				</tbody>
			</c:when>
		</c:choose>

	</table>
	<div class="card-group">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">Add Bootcamp</h5>
				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Add Bootcamp</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<form action="newBootcamp.do" method="POST" name="bootcampID">
							School Name: <input type="text" name="name"> <br>
							City: <input type="text" name="city"> <br> State: <input
								type="text" name="state"> <br> language: <input
								type="text" name="language"> <br> Duration (weeks):
							<input type="text" name="duration"> <br> Venue: <input
								type="text" name="venue"> <br> <input type="submit"
								name="bootcamp" value="Add Bootcamp" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">Edit Bootcamp</h5>
				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Edit Bootcamp</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<input type="hidden" name="id" value="${bootcamp.id}" />
						<form action="updateBootcamp.do" method="POST" name="id">
							<p>
								School Name: <input type="text" name="name"
									value="${bootcamp.name}"> <br> City: <input
									type="text" city="city" value="${bootcamp.city}"> <br>
								State: <input type="text" name="state" value="${bootcamp.state}"}>
								<br> language: <input type="text" name="language"
									value="${bootcamp.language}"> <br> Duration
								(weeks): <input type="text" name="duration"
									value="${bootcamp.duration}"> <br> Venue: <input
									type="text" name="venue" value="${bootcamp.venue}"> <br>

								<input type="hidden" name="id" value="${bootcamp.id}" /> <input
									type="hidden" name="id" value="${bootcamp.id}" /> <br> <input
									type="submit" value="Edit Bootcamp" /> <br>
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="card">
			<div class="card-body">
				<h5 class="card-title">Delete Bootcamp</h5>
				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Delete
						(Enter ID)</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<form action="deleteBootcamp.do" method="POST" name="bootcamp">
							<input type="text" name="id" /> <input type="submit" name="id"
								value="Delete bootcamp" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="card-body">
				<h5 class="card-title"> Detailed Search</h5>
				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Single ID
						Search</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<form action="getBootcamp.do" method="GET">
							<label>Single ID Search</label> <input class="form-control"
								type="text" name="bid" autocomplete="off" /> <input
								type="submit" value="Search By ID" autocomplete="off" />
						</form>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="footer.jsp"%>
	<br>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>
