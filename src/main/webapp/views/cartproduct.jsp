<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import="java.io.FileOutputStream" %>    
<%@page import="java.io.ObjectOutputStream" %>    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Cart</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<style>
		.table th, .table td {
			vertical-align: middle;
			text-align: center;
		}
		.table-wrapper {
			background: white;
			padding: 20px;
			border-radius: 10px;
			box-shadow: 0 0 15px rgba(0,0,0,0.1);
		}
	</style>
</head>
<body class="bg-light">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				th:src="@{/images/logo.png}" src="../static/images/logo.png"
				width="auto" height="40" class="d-inline-block align-top" alt="" />
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
					<li class="nav-item active"><a class="nav-link"
						href="/adminhome" >Home Page</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="/logout" >Logout</a></li>

				</ul>

			</div>
		</div>
	</nav>

<div class="container my-5">
	<div class="d-flex justify-content-between align-items-center mb-4">
		<h3 class="text-dark">Your Cart</h3>
		<a class="btn btn-primary" href="/user/products"><i class="fas fa-plus"></i> Add Product</a>
	</div>

	<div class="table-wrapper">
		<table class="table table-bordered table-hover table-responsive-sm">
			<thead class="thead-dark">
				<tr>
					<th>ID</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Description</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				try {
					String url = "jdbc:mysql://localhost:3306/springproject";
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection(url, "root", "");
					Statement stmt = con.createStatement();
					ResultSet rs = stmt.executeQuery("SELECT * FROM cart");

					while (rs.next()) {
				%>
				<tr>
					<td><%= rs.getInt(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td>$<%= rs.getString(3) %></td>
					<td><%= rs.getString(4) %></td>
					<td>
						<form action="cart/delete" method="get" class="d-inline">
							<input type="hidden" name="id" value="<%= rs.getInt(1) %>">
							<button type="submit" class="btn btn-danger btn-sm">
								<i class="fas fa-trash-alt"></i> Delete
							</button>
						</form>
					</td>
				</tr>
				<%
					}
					con.close();
				} catch (Exception ex) {
				%>
				<tr>
					<td colspan="5" class="text-danger text-center">
						<strong>Exception Occurred:</strong> <%= ex.getMessage() %>
					</td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
