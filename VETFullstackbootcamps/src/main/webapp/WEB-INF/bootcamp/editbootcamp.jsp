<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href=" https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<title>Bootcamp Listing | Edit Bootcamp provider</title>
<link rel="icon"
	href="https://www.benefits.va.gov/GIBILL/images/FGIB/VetTec_Logo.PNG"
	sizes="32X32" type="image/png">
</head>
<body>
	
	<%@ include file="navbar.jsp"%>

		<form action="updateBootcamp.do" method="get">
			<input type="hidden" id="bootcampId" name="id" value="${bootcamp.id}">
			<div class="mb-3">
				<label for="bootcampName" class="form-label">Name</label> <input
					type="text" class="form-control" name="bootcampName" id="bootcampName"
					placeholder="${bootcamp.name}">
				<div id="bootcampHelp" class="form-text">${bootcamp.name}</div>
			</div>
			<div class="mb-3">
				<label for="bootcampCity" class="form-label">City</label>
				<input type="text" class="form-control" name="bootcampCity"
					id="bootcampCity" placeholder="${bootcamp.city}">
				<div id="bootcampDescriptionHelp" class="form-text">${bootcamp.city}</div>
			</div>
			<div class="mb-3">
				<label for="bootcampCity" class="form-label">State</label>
				<input type="text" class="form-control" name="bootcampCity"
					id="bootcampCity" placeholder="${bootcamp.state}">
				<div id="bootcampDescriptionHelp" class="form-text">${bootcamp.state}</div>
			</div>
			<div class="mb-3">
				<label for="bootcampCity" class="form-label">Duration</label>
				<input type="text" class="form-control" name="bootcampCity"
					id="bootcampCity" placeholder="${bootcamp.duration}">
				<div id="bootcampDescriptionHelp" class="form-text">${bootcamp.duration}</div>
			</div>
			<div class="mb-3">
				<label for="bootcampCity" class="form-label">Language</label>
				<input type="text" class="form-control" name="bootcampCity"
					id="bootcampCity" placeholder="${bootcamp.language}">
				<div id="bootcampDescriptionHelp" class="form-text">${bootcamp.language}</div>
			</div>
			
			<div class="mb-3">
				<label for="bootcampStipend" class="form-label">Stipend</label> <input
					type="text" class="form-control" name="bootcampStipend" id="bootcampStipend"
					placeholder="${bootcamp.stipend}">
				<div id="bootcampRatingHelp" class="form-text">${bootcamp.stipend}</div>
			</div>
			<div class="mb-3">
				<label for="bootcampVenue" class="form-label">Venue</label>
				<input type="text" class="form-control" name="bootcampVenue"
					id="bootcampVenue" placeholder="${bootcamp.venue}">
				<div id="BootcampYearHelp" class="form-text">${bootcamp.venue}</div>
			</div>
			<input type="submit" class="btn btn-primary">
		</form>


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
