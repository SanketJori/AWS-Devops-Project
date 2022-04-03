<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<title>updateProperty</title>

<style>
body {
	background-size: cover;
	background-repeat: no-repeat;
	background-image:
		url("https://public-assets.typeform.com/public/mega-menu/helpcenter.png")
}

#id{
visibility:hidden;
}
</style>

</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-dark bg-dark">
			<div class="m-auto">
				<a class="navbar-brand " href="#"> RealEstate Webapp </a>
			</div>
			<div class="float-right mx-5">
				<a href="/" class="btn btn-default bg-danger text-light">Logout</a>
			</div>


		</nav>

		<div class="m-auto mt-5">
			<form class="m-auto w-75 shadow-lg p-4 mb-5 bg-light"
				id="property-add" action="/saveProperty" method="post">
				
					<h3 class="text-center pb-2 ">Update Property</h3>
					<input id="id" type="text" name="property_id" value="${property.getProperty_id() }"  />
					<div class="row">
						<div class="mb-3 col-6">
							
							<label class="form-label fw-bold" for="property_type">Property
								Type</label> <select class="form-select border-2 " id="property_type"
								name="property_type" required>
								<option value="${property.getProperty_type()}">${property.getProperty_type()}</option>
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
								Description</label> <input class="form-control border-2"
								id="property_desc" name="property_desc" required
								placeholder="enter property area, exact location, etc."
								value="${property.getProperty_desc() }"></input>
						</div>
					</div>

					<div class=" row mb-3">
						<div class="col-6">
							<label class="form-label fw-bold" for="property_location">Property
								Location</label> <input class="form-control border-2" type="text"
								name="property_location" required
								placeholder="Enter property location"
								value="${property.getProperty_location()}"></input>
						</div>
						<div class="col-6">
							<label class="form-label fw-bold" for="property_prize">Property
								Prize</label> <input class="form-control border-2" type="text"
								name="property_prize" required
								placeholder="Enter property prize in rupees"
								value="${property.getProperty_prize() }" />
						</div>

					</div>
					<div class=" row mb-3">
						<div class="col-6">
							<label class="form-label fw-bold" for="owner_name">Owner
								Name </label> <input class="form-control border-2" type="text"
								name="owner_name" required
								placeholder="Enter property owner name"
								value="${property.getOwner_name() }"></input>
						</div>
						<div class="col-6">
							<label class="form-label fw-bold" for="owner_contact">Owner
								Contact</label> <input class="form-control border-2" type="text"
								name="owner_contact" required
								placeholder="Enter property owner contact"
								value="${property.getOwner_contact() }" />
						</div>

					</div>

					<div class="m-auto text-center mt-5">
						<input type="submit" class=" btn btn-primary w-25 fw-bold"
							value="Update" />
							<a href="/displayProperty" class="btn btn-secondary" >cancel</a>
							
					</div>


				
			</form>
		</div>

	</div>

</body>
</html>