<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Thanks for joining us</title>
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
						<li class="nav-item"><a class="nav-link" href="bakery">Bakery</a></li>
						<li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
						<li class="nav-item"><a class="nav-link" href="register">Please Register</a></li>
					</ul>
				</div>
			</nav>
			<div id="hero" class="row">
				<div class="col-sm">
				
				</div>
				<div class="col-sm">
					<h1>Thanks for joining us!</h1>
					
					<div>
						<img alt="" src="https://media.rbl.ms/image?u=%2Ffiles%2F2016%2F03%2F10%2F635932340696334725-1618024996_tumblr_mnn8pvGpaB1qe3aixo1_500.gif&ho=https%3A%2F%2Faz616578.vo.msecnd.net&s=165&h=19742c2c6f5f3077325a000368eae83029f0a318f27e6adf6a2ce886c864ffcf&size=980x&c=3863355524">
					</div>
					
					<div>
						<h2>Your Info:</h2>
						${userData}		
					</div>
				</div>
				<div class="col-sm">
				
				</div>
			</div>
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