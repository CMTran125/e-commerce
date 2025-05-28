<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Home</title>

  <!-- Bootstrap 4 -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

  <style>
    body {
      background-color: #f4f6f9;
    }

    .navbar-brand img {
      height: 40px;
    }

    .jumbotron-custom {
      background: linear-gradient(135deg, #007bff, #6610f2);
      color: white;
      padding: 3rem 2rem;
      border-radius: 10px;
      box-shadow: 0 0 20px rgba(0,0,0,0.1);
    }

    .card {
      transition: all 0.3s ease;
      border: none;
      border-radius: 12px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.05);
    }

    .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 6px 25px rgba(0,0,0,0.1);
    }

    .card-title i {
      color: #007bff;
      margin-right: 8px;
    }

    .card-link.btn {
      margin-top: 15px;
      width: 100%;
    }
  </style>
</head>

<body>
  <!-- Navbar -->
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

  <!-- Welcome Message -->
  <div class="container my-5">
    <div class="jumbotron jumbotron-custom text-center">
      <h1 class="display-5">Welcome Back, Admin</h1>
      <p class="lead">Manage your data from this Admin Panel</p>
    </div>
  </div>

  <!-- Cards Section -->
  <div class="container mb-5">
    <div class="row justify-content-center">
      <!-- Categories -->
      <div class="col-md-4 mb-4">
        <div class="card text-center">
          <div class="card-body">
            <h5 class="card-title"><i class="fas fa-list-alt"></i> Categories</h5>
            <p class="card-text">Manage the categories section here.</p>
            <a href="/admin/categories" class="card-link btn btn-primary">Manage</a>
          </div>
        </div>
      </div>

      <!-- Products -->
      <div class="col-md-4 mb-4">
        <div class="card text-center">
          <div class="card-body">
            <h5 class="card-title"><i class="fas fa-box-open"></i> Products</h5>
            <p class="card-text">Manage all the products here.</p>
            <a href="/admin/products" class="card-link btn btn-primary">Manage</a>
          </div>
        </div>
      </div>

      <!-- Customers -->
      <div class="col-md-4 mb-4">
        <div class="card text-center">
          <div class="card-body">
            <h5 class="card-title"><i class="fas fa-users"></i> Customers</h5>
            <p class="card-text">Manage all the customers here.</p>
            <a href="/admin/customers" class="card-link btn btn-primary">Manage</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  
  <!-- Bootstrap & jQuery Scripts -->
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
