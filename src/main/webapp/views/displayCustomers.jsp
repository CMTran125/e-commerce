<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
  .table-responsive { box-shadow: 0 4px 12px rgba(0,0,0,0.05); border-radius: 8px; }
  .table thead th { background-color: #f8f9fa; }
  .navbar-brand img { height: 50px; width: auto; }
  .btn-icon { display: flex; align-items: center; gap: 5px; }
</style>
</head>
<body class="bg-light">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid d-flex align-items-center">
      <a class="navbar-brand font-weight-bold text-primary" href="#">
	  	<img src="../images/logo.png" style="height: 60px; width: 100px; object-fit: contain;" alt="CMTran Shop">
	  </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse"
              data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
              aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active mx-3"><a class="nav-link" href="/admin/">Home Page</a></li>
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

<div class="container mt-4">
  <div class="table-responsive">
    <table class="table table-bordered table-striped table-hover">
      <thead class="thead-light">
        <tr>
          <th>Customer Name</th>
          <th>Email</th>
          <th>Address</th>
          <th class="text-center">Delete</th>
        </tr>
      </thead>
      <tbody>
        <c:choose>
          <c:when test="${empty customers}">
            <tr>
              <td colspan="4" class="text-center text-muted">No customers found.</td>
            </tr>
          </c:when>
          <c:otherwise>
            <c:forEach var="customer" items="${customers}">
              <tr>
                <td>${customer.username}</td>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
                <td class="text-center">
                  <button type="submit" class="btn btn-outline-danger btn-sm" title="Delete">
                    <span class="material-icons" style="font-size:18px">delete</span> Delete
                  </button>
                </td>
              </tr>
            </c:forEach>
          </c:otherwise>
        </c:choose>
      </tbody>
    </table>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
