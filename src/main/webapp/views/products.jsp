<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import ="java.io.FileOutputStream" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import=" java.io.ObjectOutputStream" %>

<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>Product Management</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

<style>
	body {
		background-color: #f8f9fa;
	}

	.navbar-brand img {
		height: 40px;
	}

	.table thead th {
		background-color: #343a40;
		color: white;
	}

	.table tbody tr:hover {
		background-color: #e9ecef;
	}

	.table img {
		object-fit: cover;
		border-radius: 4px;
	}

	.btn-primary {
		margin-bottom: 20px;
	}

	.description-cell {
		max-width: 250px;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	}

</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid d-flex align-items-center">
      <a class="navbar-brand font-weight-bold text-primary" href="#">
	  	<img src="../images/logo.png" style="height: 60px; width: 100px; object-fit: contain;" alt="CMTran Shop">
	  </a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto"></ul>
			<ul class="navbar-nav">
				<li class="nav-item active mx-3"><a class="nav-link" href="Dashboard">Home Page</a></li>
				<li class="nav-item mx-3 d-flex align-items-center">
			     <a class="btn btn-outline-danger d-flex align-items-center" href="logout" style="gap: 6px;">
			      <span class="material-icons" style="font-size: 20px;">logout</span>
			       Logout
			      </a>
			    </li>
			</ul>
		</div>
	</div>
</nav>

<div class="container-fluid mt-4">

	<a href="/admin/products/add" class="btn btn-primary">
		<i class="fas fa-plus-circle"></i> Add Product
	</a>

	<div class="table-responsive">
		<table class="table table-bordered table-hover bg-white">
			<thead>
				<tr>
					<th scope="col" style="width: 50px;">#</th>
					<th scope="col" style="width: 250px;">Product Name</th>
					<th scope="col" style="width: 200px;">Category</th>
					<th scope="col" style="width: 150px;">Preview</th>
					<th scope="col" style="width: 100px;">Quantity</th>
					<th scope="col" style="width: 150px;">Price (VND)</th>
					<th scope="col" style="width: 75px;">Weight</th>
					<th scope="col" class="description-cell">Description</th>
					<th scope="col" style="width: 75px;">Delete</th>
					<th scope="col" style="width: 75px;">Update</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${products}">
					<tr>
						<td>${product.id}</td>
						<td>${product.name}</td>
						<td>${product.category.name}</td>
						<td>
							<img src="${product.image}" alt="Image" height="100" width="120">
						</td>
						<td>${product.quantity}</td>
						<td><fmt:formatNumber value="${product.price}" type="number" groupingUsed="true" /></td>
						<td>${product.weight}</td>
						<td class="description-cell" title="${product.description}">
							${product.description}
						</td>
						<td>
							<form action="products/delete" method="get" onsubmit="return confirm('Are you sure to delete this product?');">
								<input type="hidden" name="id" value="${product.id}">
								<button type="submit" class="btn btn-danger btn-sm">
									<i class="fas fa-trash-alt"></i> Delete
								</button>
							</form>
						</td>
						<td>
							<form action="products/update/${product.id}" method="get">
								<button type="submit" class="btn btn-warning btn-sm">
									<i class="fas fa-edit"></i> Update
								</button>
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</div>

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

</body>
</html>
