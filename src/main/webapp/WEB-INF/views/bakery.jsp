<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Cosmic Java Bakery</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css">
		<link rel="stylesheet" href="site.css">
		<style>
		
			.jumbotron{
				background-image: url("https://assets3.thrillist.com/v1/image/2788029/size/gn-gift_guide_variable_c.jpg");
				background-repeat: no-repeat;
				background-size: cover;
				}
		
		</style>
	</head>
	<body>
	
		<div class="container-fluid">
		
			<nav class="navbar navbar-expand-lg navbar-dark bg-primary site-header sticky-top py-1">
				<a class="navbar-brand" href="/">Cosmic Java</a>
				<div>
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><a class="nav-link" href="#">Bakery</a></li>
						<li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
						<li class="nav-item"><a class="nav-link" href="register">Please Register</a></li>
					</ul>
				</div>
			</nav>
			
			<div class="jumbotron jumbotron-fluid">
			
				<h1>Bakery</h1>
			
			</div>
			
			<form action="/food">
			
				<input type="text" value="${category}" name="category" placeholder="Category">
				<input class="btn btn-light" type="submit" value="Search">
				
				<c:if test="${not empty category}">
					<a href="/food" class="btn btn-secondary">Clear</a>
				</c:if>
				<a href="add-food" class="btn btn-secondary">Add</a>
				
			</form>
			
			<table class="table">
				<thead>
					<th>Name</th>
					<th>Category</th>
					<th>Description</th>
					<th>Price</th>
					<th>Update</th>
					<th>Remove</th>
				</thead>
				<tbody>
					<c:forEach items="${food}" var="b">
						<tr>
							<td>${b.name}</td>
							<td>${b.category}</td>
							<td>${b.description}</td>
							<td>${b.price}</td>
							<td><a class="btn btn-secondary" href="/update?id=${b.id}">Edit</a></td>
							<td><a class="btn btn-danger" href="/delete?id=${b.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
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