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
<title>Agent Profile</title>
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
<body class="text-center">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="masthead mb-auto">
			<div class="inner">
				<h3 class="masthead-brand">Agent Profile</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active" style="font-size: 24px" href="/">Home</a>
				</nav>
			</div>
		</header>
		<div class="container">
			<h1 class="cover-heading">Agent Profile Page</h1>
		</div>
		<br>
		<main role="main" class="inner cover">
			<c:if test="${propertyList != null}">

			</c:if>

			<h2 class="cover-heading">Current Properties Available</h2>
			<table class="table sortable">
				<caption>All Available Properties</caption>
				<thead>
					<tr>
						<th scope="col">Street</th>
						<th scope="col">City</th>
						<th scope="col">State</th>
						<th scope="col">Zip Code</th>
						<th scope="col">Squarefoot</th>
						<th scope="col">Price $</th>
						<th scope="col">Date Posted</th>
						<th scope="col">Images</th>
						<th scope="col">Agent Contact</th>
					</tr>

					<tr>
				</thead>

				<c:forEach var="agent_property" items="${property}">
					<tr>
						<td><c:out value="${agent_property.street}" /></td>
						<td><c:out value="${agent_property.city}" /></td>
						<td><c:out value="${agent_property.state}" /></td>
						<td><c:out value="${agent_property.zip}" /></td>
						<td><c:out value="${agent_property.squarefoot}" /></td>
						<td><c:out value="${agent_property.price}" /></td>
						<td><c:out value="${agent_property.datePosted}" /></td>
						<td><img alt="image goes here" height="150px" width="400px"
							src="../../styles/assets/img/House1.jpg"></td>

						<td><c:out value="${agent_property.agentinfo}" /></td>
					</tr>
				</c:forEach>

			</table>
			<button class="btn btn-lg btn-primary" id="submit"
				onclick="location.href ='/add-property'">Add New Property</button>
		</main>
	</div>
</body>
</html>
