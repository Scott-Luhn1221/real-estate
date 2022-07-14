<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Add Property</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="../../styles/assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../../styles/css/styles.css" rel="stylesheet" />
<meta charset="utf-8">

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.4/examples/cover/">

<!-- Bootstrap core CSS -->
<link
	href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
</head>
<body class="text-center">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="masthead mb-auto">
			<div class="inner">
				<h3 class="masthead-brand">Cover</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active" href="/">Home</a>
				</nav>
			</div>
		</header>
		<div class="container">
			<h1 class="cover-heading">Add New Property</h1>
		</div>
		<br>
		<main role="main" class="inner cover">
			<form:form modelAttribute="property" action="/add-property"
				method="post">
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputStreet">Street</label>
						<form:input path="street" type="text" class="form-control"
							id="inputStreet" />
					</div>
					<div class="form-group col-md-6">
						<label for="inputCity">City</label>
						<form:input path="city" type="text" class="form-control"
							id="inputCity" />
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputState">State</label>
						<form:input path="state" type="text" class="form-control" />
					</div>
					<div class="form-group col-md-6">
						<label for="inputZip">Zip Code</label>
						<form:input path="zip" type="text" class="form-control"
							id="inputSquareFoot" />
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputSquarefoot">Squarefeet</label>
						<form:input path="squarefoot" type="text" class="form-control"
							id="inputSquarefeet" />
					</div>
					<div class="form-group col-md-6">
						<label for="inputPrice">Price</label>
						<form:input path="price" type="text" class="form-control"
							id="inputPrice" />
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputAgentInfo">Agent Email</label>
							<form:input path="agentinfo" type="text" class="form-control"
								id="inputAgentInfo" />
						</div>
						<div class="form-group col-md-6">
							<label for="inputDatePosted">Date Posted</label>
							<form:input path="datePosted" type="text" class="form-control" />
							<h3>File Upload:</h3>
							Select a file to upload: <br />
							<form action="UploadServlet" method="post"
								enctype="multipart/form-data">
								<input type="file" name="file" size="50" /> <br /> <input
									type="submit" value="Upload File" />
							</form>
						</div>
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Add Property</button>
			</form:form>

		</main>
	</div>
</body>
</html>