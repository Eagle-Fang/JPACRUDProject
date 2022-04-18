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

	<%@ include file="bootcamp/navbar.jsp"%>
	<br>
	<br>
	<div class="container col-xxl-8 px-4 py-5">
		<div class="row flex-lg-row-reverse align-items-center g-5 py-5">
			<div class="col-10 col-sm-8 col-lg-6">
				<img
					src="https://231webdev.com/wp-content/uploads/2016/06/military-vector-logos-featured-231.jpg"
					class="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes"
					width="6500" height="490" loading="lazy">
			</div>
			<div class="col-lg-6">
				<h1 class="display-5 fw-bold lh-1 mb-3">VET TEC Coding Bootcamp
					Providers</h1>
				<p class="lead">Display details for a single provider by ID or
					view and update the entire list of providers.</p>
				<div class="card-body">
					<form action="listBootcamps.do" method="GET">
						<input type="submit" value="Display List of Current Providers" />
					</form>
				</div>
				<div class="card" style="width: 25rem;">
					<div class="card-body">
						<form action="getBootcamp.do" method="GET">
							<label>Search by Bootcamp ID:</label> <input class="form-control"
								type="text" name="bid" autocomplete="off" /> <input
								type="submit" value="Search By ID" autocomplete="off" />
						</form>
					</div>
				</div>
				<div class="card" style="width: 25rem;">
					<div class="card-body">
						<form action="updateBootcamp.do" method="POST">
							<label>Update Provider Details (Enter ID):</label> <input class="form-control"
								type="text" name="bid" autocomplete="off" /> <input
								type="submit" value="Search By ID" autocomplete="off" />
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

	<%@ include file="bootcamp/footer.jsp"%>
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
