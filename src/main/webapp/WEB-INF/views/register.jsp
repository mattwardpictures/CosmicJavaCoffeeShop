<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Cosmic Java Registration Form</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css">
		<link rel="stylesheet" href="site.css">
	</head>
		<body>
			<div class="container-fluid">
				<nav class="navbar navbar-expand-lg navbar-dark bg-primary site-header sticky-top py-1">
					<a class="navbar-brand" href="/">Cosmic Java</a>
					<div>
						<ul class="navbar-nav mr-auto">
							<li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
							<li class="nav-item active"><a class="nav-link" href="register">Please Register</a></li>
						</ul>
					</div>
				</nav>
				<div id="hero" class="row">
					<div class="col-sm">
						
					</div>
					<div class="col-sm">
						<h1>Register At Cosmic Java</h1>
						
						<img alt="" src="https://media.giphy.com/media/8eOXrYL5FjLlm/giphy.gif">
					</div>
					<div class="col-sm">
						
					</div>
				</div>
				
				<div class="row">
					<div class="col-sm">
						
					</div>
					<div class="col-sm">
						<form action="formresults" onsubmit="return validateInfo();">
							<div class="form-group">
									<label>First Name:</label><br> 
									<input class="form-control" id="firstname" type="text" name="firstname"><br>
									<label>Last Name:</label><br>
									<input class="form-control" id="lastname" type="text" name="lastname"><br>
									<label>Email:</label><br>
									<input class="form-control" id="email" type="email" name="email"><br>
									<label>Phone:</label><br>
									<input class="form-control" id="phone" type="tel" name="phone"><br>
									<label>Password:</label><br>
									<input class="form-control" id="password" type="password" name="password"><br>
									<input class="btn btn-light" type="submit" value="Add">
							</div>
						</form>
					</div>
					<div class="col-sm">
						
					</div>
				</div>
			</div>
			
			<script src="script.js"></script>
		
			<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
		</body>
</html>