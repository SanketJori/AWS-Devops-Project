<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>RealEstate App</title>
</head>
<style>
body {
	background-image:
		url("https://assets-news.housing.com/news/wp-content/uploads/2021/01/13112645/Maharashtra%E2%80%99s-real-estate-premium-cut-may-boost-under-construction-projects-and-new-launches-FB-1200x700-compressed.jpg");
	background-repeat: repeat;
	background-attachment: fixed;
	background-position: center;
}

#welcome-div {
	height: fit-content;
	padding: 20px 20px;
}

/* img {
	width: 700px;
	height: 600px;
} */

.btn {
	border: 1px solid #129;
}

.btn:hover {
	background-color: #129;
}

.p-img:hover{
border:1px solid #888888 ;
box-shadow: 0px 2px 10px #888888;
}
</style>

<body>
	<div class="container-fluid ">
		<div id="welcome-div" class="col-6 mt-5 bg-light  shadow-lg m-auto">
			<h1 style="color: #128" class="text-center">Welcome to VASTU.com</h1>
			<h5 style="color: #569" class="text-center">Find, Buy & Own Your
				Dream Land on India's No.1 Property Portal</h5>
			<div id="btn-div" class="text-center row mt-4 mb-2">

				<div class=" col-6">


					<a href="userLogin"
						class="text-uppercase btn btn-lg btn-outline-dark">User Login</a>

				</div>
				<div class="col-5">
					<a href="adminLogin"
						class="text-uppercase btn btn-lg btn-outline-dark">Admin Login</a>
				</div>

			</div>



		</div>
		<div class="row w-75 m-auto mt-5 gx-5">
		<h4 class="text-center text-dark text-border bg-light py-3">Find Better Places to Live, Work and Wonder...</h4>
			<div class="col-3 bg-light p-1 ">
				<img class="p-img" src="https://static.99acres.com/universalapp/img/d_hp_buy.webp" width="100%">
				<h6 class="bg-light text-dark text-center p-2">Buy Your Own House</h6>
			</div>
			<div class="col-3 bg-light p-1 ">
				<img class="p-img" src="https://static.99acres.com/universalapp/img/d_hp_pg.webp" width="100%">
				<h6 class="bg-light text-dark text-center p-2">Rent Your House</h6>
			</div>
			<div class="col-3 bg-light p-1 ">
				<img class="p-img" src="https://static.99acres.com/universalapp/img/d_hp_com_buy.webp" width="100%">
				<h6 class="bg-light text-dark text-center p-2"> Sell/Rent your property</h6>
			</div>
			<div class="col-3 bg-light p-1">
				<img class="p-img" src="https://static.99acres.com/universalapp/img/d_hp_com_lease.webp" width="100%">
				<h6 class="bg-light text-dark text-center p-2">Buying commercial spaces</h6>
			</div>


		</div>
	</div>
</html>