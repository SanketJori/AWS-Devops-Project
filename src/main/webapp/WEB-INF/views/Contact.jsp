<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<title>Insert title here</title>
</head>

<style>
body {
	background-size: cover;
	background-repeat: no-repeat;
	background-image:
		url("https://public-assets.typeform.com/public/mega-menu/helpcenter.png")
}
</style>
<script>
function popup() {
   window.alert("Request sent Successfully.");
}
	
</script>


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
		<div class="bg-light shadow-lg p-5 mt-5 w-50 m-auto">
			<h3 class="text-center">Contact Owner</h3>
			<div class="row">
				<div class="col-2 fw-bold">Owner</div>
				<div class="col fw-bold">: ${property.getOwner_name() }</div>
			</div>
			<div class="row">
				<div class="col-2 fw-bold">Contact</div>
				<div class="col fw-bold">: ${property.getOwner_contact() }</div>
			</div>
			<div class="row">
				<div class="col-2 fw-bold my-auto">Messege</div>
				<div class="col">
					<select class="form-select border-2 " id="property_type"
						name="property_type" required>
						<option value="">Select Messege</option>
						<option value="Intrested to Buy">Intrested to Buy</option>
						<option value="Intrested to Visit">Intrested to Visit</option>
						<option value="Intrested to talk">Intrested to discuss</option>

					</select>

				</div>
			</div>



			<div class="text-center mt-3">
				<a href="/displayUserPannel/${username}"
					class="btn btn-primary  w-25" id="link1" onclick="popup()">Send Request</a> <a
					href="/displayUserPannel/${username}" class="btn btn-secondary">cancel</a>
			</div>

		</div>
	</div>
</body>
</html>



