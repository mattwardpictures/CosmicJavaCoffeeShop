<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css">
		<link rel="stylesheet" href="site.css">
	</head>
	<body>
	
		<div class="container">
		
			<nav class="navbar navbar-expand-lg navbar-dark bg-primary site-header sticky-top py-1">
				<a class="navbar-brand" href="#">Cosmic Java</a>
				<div>
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="nav-link" href="/food">Bakery</a></li>
						<li class="nav-item"><a class="nav-link" href="about">About Us</a></li>
						<li class="nav-item"><a class="nav-link" href="register">Please Register</a></li>
					</ul>
				</div>
			</nav>
		
			<h3>Add Products to Inventory</h3>
			<form action="/newfood" method="post">
				<label>Name</label>
				<input type="text" value="${name}" name="name" placeholder="Name"><br>
				<label>Category</label>
				<input type="text" value="${category}" name="category" placeholder="Category"><br>
				<label>Description</label>
				<input type="text" value="${description}" name="description" placeholder="Description"><br>
				<label>Price</label>
				<input type="text" value="${price}" name="price" placeholder="Price"><br>
				<input class="btn btn-secondary" type="submit" value="Add">
			</form>
		</div>
		
		<div id="footer" class="row">
			<div class="col-md">
				<small>© 2018 Cosmic Java Co.</small>
			</div>
		</div>
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>