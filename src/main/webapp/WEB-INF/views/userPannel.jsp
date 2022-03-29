<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<title>User Pannel</title>

<style>
body {
	background-size: cover;
	background-repeat: no-repeat;
	background-image:
		url("https://public-assets.typeform.com/public/mega-menu/helpcenter.png")
}
</style>


</head>

<body>

	<div class="container-fluid">

		<nav class="navbar navbar-dark bg-dark">
			<div class="float-left text-light d-inline-flex mx-5">
				<a class="m-2 fw-bolder text-decoration-none text-light" href="#">HOME</a>
				<a class="m-2 fw-bolder text-decoration-none text-light" href="#">ABOUT_US</a>
				<form class="d-flex m-2" action="#">
					<input class="form-control me-2" type="search"
						placeholder="Search Property by City" aria-label="Search">
					<button class="btn btn-outline-light p-1" type="button">
						<i class="material-icons my-auto">search</i>
					</button>
				</form>

			</div>
			<div class="m-auto">
				<a class="navbar-brand fw-bold mx-5" href="#"> VASTU.com </a>
				<h6 class="text-light">India's no.1 Property Portal</h6>
			</div>
			<div class="dropdown mx-1">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton1" data-bs-toggle="dropdown"
					aria-expanded="false">${username}</button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					<li><a class="dropdown-item" href="#">User Profile</a></li>
					<li><a class="dropdown-item" href="#">Contacted</a></li>
					<li class="px-2"><a class="dropdown-item bg-danger text-light"
						href="/">Logout</a></li>

				</ul>
			</div>



		</nav>
		<div class="tab-content" id="pills-tabContent ">
			<div class="tab-pane fade show active" id="pills-home"
				role="tabpanel" aria-labelledby="pills-home-tab">
				<div class="row mt-5">
					<c:forEach items="${listProperty}" var="property">
						<div class="col-10 m-auto w-75 shadow-lg p-4 mb-5 bg-light">
							<%-- <div class="row">
								<div class="col-8">
									<h5 class="shadow-lg w-50 p-1 text-center">
										<b>Property ID :</b> ${property.getProperty_id() }
									</h5>
								</div>

							</div> --%>


							<div class="row">
								<div class="col-2">
									<h5>
										<b>Property Type </b>
									</h5>
								</div>
								<div class="col">
									<h5>: ${property.getProperty_type() }</h5>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<h5>
										<b>Description </b>
									</h5>
								</div>
								<div class="col">
									<h5>: ${property.getProperty_desc() }</h5>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<h5>
										<b>Location </b>
									</h5>
								</div>
								<div class="col">
									<h5>: ${property.getProperty_location() }</h5>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<h5>
										<b>Prize </b>
									</h5>
								</div>
								<div class="col">
									<h5>: ${property.getProperty_prize() }</h5>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<h5>
										<b>Owner </b>
									</h5>
								</div>
								<div class="col">
									<h5>: ${property.getOwner_name() }</h5>
								</div>
							</div>

							<%-- <div class="row">
								<div class="col-2">
									<h5>
										<b>Contact </b>
									</h5>
								</div>
								<div class="col">
									<h5>: ${property.getOwner_contact() }</h5>
								</div>
							</div> --%>

							<div class="w-50 mt-2">
								<a class="btn btn-primary w-50" href="/contactOwner/${username}/${property.getProperty_id()}" >Contact Owner</a>
							</div>


						</div>
					</c:forEach>
				</div>
			</div>

		</div>

	</div>

</body>

</html>