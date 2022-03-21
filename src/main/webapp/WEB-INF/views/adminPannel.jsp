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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<title>Admin Pannel</title>

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
			<div class="m-auto">
				<a class="navbar-brand " href="#"> Bootstrap </a>
			</div>


		</nav>
		<ul class="nav nav-tabs mb-3" id="pills-tab" role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active text-dark fw-bold"
					id="pills-home-tab" data-bs-toggle="pill"
					data-bs-target="#pills-home" type="button" role="tab"
					aria-controls="pills-home" aria-selected="true">All
					Properties</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link text-dark fw-bold" id="pills-profile-tab"
					data-bs-toggle="pill" data-bs-target="#pills-profile" type="button"
					role="tab" aria-controls="pills-profile" aria-selected="false">Add
					New</button>
			</li>

		</ul>
		<div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active" id="pills-home"
				role="tabpanel" aria-labelledby="pills-home-tab">
				<div class="row">
				<c:forEach items="${listProperty}" var="property">
				<div class="col-10 m-auto w-75 shadow-lg p-4 mb-5 bg-light">
				<h5><b>Property ID :</b> ${property.getProperty_id() }</h5>
				
				<h5><b>Property Type :</b> ${property.getProperty_type() }</h5>
				<h5>${property.getProperty_desc() }</h5>
				<h5><b>Location :</b> ${property.getProperty_location() }</h5>
				<h5><b>Prize :</b> ${property.getProperty_prize() }</h5>
				<h5><b>Owner :</b> ${property.getOwner_name() }</h5>
				<h5><b>Contact :</b> ${property.getOwner_contact() }</h5>
				<input type="submit" class="btn btn-primary" value="update" />
				<input type="submit" class="btn btn-danger" value="delete" />
				
				</div>
				</c:forEach>
				
				
				</div>
				</div>


			<div class="tab-pane fade" id="pills-profile" role="tabpanel"
				aria-labelledby="pills-profile-tab">

				<div class="m-auto">
					<form class="m-auto w-75 shadow-lg p-4 mb-5 bg-light"
						id="property-add" action="saveProperty" method="post">
						<h3 class="text-center pb-2 ">Add New Property</h3>
						<div class="row">
							<div class="mb-3 col-6">
								<label class="form-label fw-bold" for="property_type">Property
									Type</label> <select class="form-select border-2 " id="property_type"
									name="property_type" required>
									<option value="">Select property type</option>
									<option value="plot">Plot</option>
									<option value="flat">Flat</option>
									<option value="house">House</option>
									<option value="commercial">Commercial</option>
									<option value="shop">Shop</option>
									<option value="other">Other</option>
								</select>
							</div>

							<div class="mb-3 col-6">
								<label class="form-label fw-bold" for="property_desc">Property
									Description</label>
								<textarea class="form-control border-2" id="property_desc"
									name="property_desc" rows="2" cols="30" required
									placeholder="enter property area, exact location, etc."></textarea>
							</div>
						</div>

						<div class=" row mb-3">
							<div class="col-6">
								<label class="form-label fw-bold" for="property_location">Property
									Location</label> <input class="form-control border-2" type="text"
									name="property_location" required
									placeholder="Enter property location"></input>
							</div>
							<div class="col-6">
								<label class="form-label fw-bold" for="property_prize">Property
									Prize</label> <input class="form-control border-2" type="text"
									name="property_prize" required
									placeholder="Enter property prize" />
							</div>

						</div>
						<div class=" row mb-3">
							<div class="col-6">
								<label class="form-label fw-bold" for="owner_name">Owner
									Name </label> <input class="form-control border-2" type="text"
									name="owner_name" required
									placeholder="Enter property owner name"></input>
							</div>
							<div class="col-6">
								<label class="form-label fw-bold" for="owner_contact">Owner
									Contact</label> <input class="form-control border-2" type="text"
									name="owner_contact" required
									placeholder="Enter property owner contact" />
							</div>

						</div>

						<div class="m-auto text-center mt-5">
							<input type="submit" class=" btn btn-primary w-50" value="Add" />
						</div>



					</form>
				</div>

			</div>

		</div>

	</div>

</body>
</html>