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
<title>VETTEC Bootcamp Details | VET TEC Bootcamp </title>
<link rel="icon"
	href="https://www.benefits.va.gov/GIBILL/images/FGIB/VetTec_Logo.PNG"
	sizes="32X32" type="image/png">

</head>
<body>
	<%@ include file="navbar.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<div class="container-fluid">



<!--  -->
	<c:choose>
			<c:when test="${empty bootcamp}">
				<p>No Provider Found. Please Try Again.</p>
			</c:when>
			<c:when test="${not empty bootcamp}">
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">${bootcamp.name}</h5>
						<h6 class="card-subtitle mb-2 text-muted">${bootcamp.city}, ${bootcamp.state}</h6>
						<span class="badge bg-warning text-dark">${bootcamp.duration}</span>
						<p class="card-text">${bootcamp.language}</p>
						<p class="card-text">${bootcamp.stipend}</p>
						<span class="badge rounded-pill bg-success">${bootcamp.venue}</span>
						<span class="badge rounded-pill bg-primary my-1">ID
							${bootcamp.id}</span>
									
						
						<hr>
				
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<p>No Provider found</p>
			</c:otherwise>
		</c:choose>
	
	<!--  -->
	
	
	

	</div>
	
	<div class="container">

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
