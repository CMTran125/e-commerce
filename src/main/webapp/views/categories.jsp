<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Category</title>
  <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet"
        href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
  <style>
    body {
      background-color: #f8f9fa;
    }

    .navbar-brand img {
      height: 40px;
    }

    .modal-header, .modal-footer {
      background-color: #f1f1f1;
    }

    .table th, .table td {
      vertical-align: middle !important;
    }

    .btn i {
      margin-right: 5px;
    }

    .container {
      padding-top: 30px;
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
	              data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
	              aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav mr-auto"></ul>
	      <ul class="navbar-nav">
	        <li class="nav-item active mx-3">
	          <a class="nav-link" href="Dashboard">Home Page</a>
	        </li>
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

<div class="container">
  <h2 class="mb-4 text-center">Category Management</h2>

  <!-- Add Category Button -->
  <button type="button" class="btn btn-primary mb-3" data-toggle="modal"
          data-target="#addCategoryModal">
    <i class="fas fa-plus-circle"></i> Add Category
  </button>

  <!-- Add Category Modal -->
  <div class="modal fade" id="addCategoryModal" tabindex="-1" role="dialog"
       aria-labelledby="addCategoryModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <form action="categories" method="post">
          <div class="modal-header">
            <h5 class="modal-title">Add New Category</h5>
            <button type="button" class="close" data-dismiss="modal"
                    aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <input type="text" name="categoryname" class="form-control"
                   required placeholder="Category name">
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary"
                    data-dismiss="modal">Close</button>
            <input type="submit" class="btn btn-primary" value="Save Changes">
          </div>
        </form>
      </div>
    </div>
  </div>

  <!-- Categories Table -->
  <table class="table table-bordered table-hover bg-white">
    <thead class="thead-light">
    <tr>
      <th scope="col">SN</th>
      <th scope="col">Category Name</th>
      <th scope="col" style="width: 100px;">Delete</th>
      <th scope="col" style="width: 100px;">Update</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="category" items="${categories}">
      <tr>
        <td>${category.id}</td>
        <td>${category.name}</td>
        <td>
          <form action="categories/delete" method="get">
            <input type="hidden" name="id" value="${category.id}">
            <button type="submit" class="btn btn-danger btn-sm">
              <i class="fas fa-trash-alt"></i> Delete
            </button>
          </form>
        </td>
        <td>
          <!-- Update Button -->
          <button type="button" class="btn btn-warning btn-sm"
                  data-toggle="modal"
                  data-target="#updateCategoryModal-${category.id}">
            <i class="fas fa-edit"></i> Update
          </button>

          <!-- Update Modal -->
          <div class="modal fade" id="updateCategoryModal-${category.id}"
               tabindex="-1" role="dialog"
               aria-labelledby="updateCategoryModalLabel-${category.id}" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <form action="categories/update" method="get">
                  <div class="modal-header">
                    <h5 class="modal-title">Update Category</h5>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <input type="hidden" name="categoryid" value="${category.id}">
                    <input type="text" name="categoryname" class="form-control"
                           value="${category.name}" required>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary"
                            data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Update changes</button>
                  </div>
                </form>
              </div>
            </div>
          </div>

        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
