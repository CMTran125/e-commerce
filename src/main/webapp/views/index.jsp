<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
          <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

    <title>CMTran Shop</title>
    
</head>
<body class="bg-light">
  <header class="mb-4">
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm" style="padding: 0.3rem 1rem;">
      <div class="container-fluid d-flex align-items-center">
        <a class="navbar-brand font-weight-bold text-primary" href="#">
          <img src="../images/logo.png" style="height: 60px; width: 100px; object-fit: contain;" alt="Logo">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto align-items-center">
            <li class="nav-item mx-3">
              <span class="nav-link">Welcome, <strong>${username}</strong></span>
            </li>
            <li class="nav-item mx-3">
              <a class="nav-link" href="/">
                <span class="material-icons">shopping_cart</span> Cart
              </a>
            </li>
            <li class="nav-item mx-3">
              <a class="nav-link" href="profileDisplay">
                <span class="material-icons">person</span> Profile
              </a>
            </li>
            <li class="nav-item mx-3">
              <a class="btn btn-outline-danger ml-2" href="logout">
                <span class="material-icons">logout</span> Logout
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <main class="container">
    <h2 class="text-center mb-5 text-dark font-weight-bold">
      Welcome to <span class="text-primary">CMTran Shop</span>
    </h2>

    <div class="row">
      <c:forEach var="product" items="${products}"	>
        <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
          <div class="card h-100 shadow-sm border-0 hover-shadow transition">
            <div class="p-3 text-center" style="background-color: #fdfdfd;">
              <img class="card-img-top" src="${product.image}" alt="Product Image"
                   style="height: 160px; object-fit: contain;">
            </div>
            <div class="card-body d-flex flex-column">
              <h5 class="card-title text-dark text-truncate font-weight-bold mb-1">${product.name}</h5>
              <p class="card-text mb-1 text-muted">
                ${product.category.name}
              </p>
              <p class="card-text mb-1 text-primary font-weight-bold">
				<fmt:formatNumber value="${product.price}" type="number" groupingUsed="true" /> VND
			  </p>
              <p class="card-text text-muted small flex-grow-1">${product.description}</p>
              <a href="#" class="btn btn-sm btn-primary btn-block mt-2">
                <span class="material-icons">add_shopping_cart</span> Add to Cart
              </a>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </main>

  <footer class="bg-white border-top mt-5 py-3">
    <div class="container text-center">
      <small class="text-muted">&copy; 2025 CMTran Shop. All rights reserved.</small>
    </div>
  </footer>

  
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <!-- Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

  <style>
    .hover-shadow:hover {
      transform: translateY(-4px);
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
      transition: all 0.3s ease;
    }
    .transition {
      transition: all 0.3s ease;
    }
    .btn-primary:hover {
      background-color: #0056b3;
      border-color: #004999;
    }
    .material-icons {
      vertical-align: middle;
      font-size: 18px;
    }
  </style>
</body>

</html>