<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Welcome to Cosmic Java</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css">
		<link rel="stylesheet" href="site.css">
		<style>
			#hero {
					
			}
			
			#hero img {border: 2px solid black;}
			
			#lattecino {
				
			}
		</style>
	</head>
	<body>
		<div class="container-fluid">
			<nav class="navbar navbar-expand-lg navbar-dark bg-primary site-header sticky-top py-1">
				<a class="navbar-brand" href="#">Cosmic Java</a>
				<div>
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
						<li class="nav-item"><a class="nav-link" href="register">Please Register</a></li>
					</ul>
				</div>
			</nav>
			<div id="hero" class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center">
				<div class="row">
					<div class="col-sm">
					
					</div>
					<div class="col-12 col-md">
						<img alt="" src="https://media.giphy.com/media/1i8K5j1uBWhpK/giphy.gif">
						<h1>Welcome to Cosmic Java!</h1>
					</div>
					<div class="col-sm">
					
					</div>
				</div>
			</div>
			
			<div class="row">
				<div id="espresso" class="col-6 col-md">
					<h2>Espresso</h2>
					<img alt="" src="http://www.delonghi.com/Global/recipes/Coffee/espresso.png">
					<p></p>
					<div class="form-group">
						<form action="espressoMenu">
							<p>Select brew and shot selection</p>
							<select class="form-control" name="beanSelection">
								<option value="Light">Light</option>
								<option value="Medium">Medium</option>
								<option value="Medium-Dark">Medium-Dark</option>
								<option value="Dark">Dark</option>
								<option value="Decaf">Decaf</option>
							</select>
							<select class="form-control" name="shotSelection">
								<option value="Single-shot Espresso">Single-shot</option>
								<option value="Double-shot Espresso">Double-shot</option>
								<option value="Triple-shot Espresso">Triple-shot</option>
								<option value="Quad-shot Espresso">Quad-shot</option>
							</select><br>
							<input class="btn btn-light" type="submit" value="Submit">
						</form>
					</div>
				</div>
				<div id="lattecino" class="col-6 col-md">
					<h2>Latte/Cappucino</h2>
					<img alt="" src="http://www.delonghi.com/Global/recipes/Coffee/latte-macchiato.png">
					<p>Latte = Lots of milk with a little foam<br>Cappucino = Lots of foam with less milk</p>
					<div class="form-group">
						<form action="latteMenu">
							<select class="form-control" name="drinkSelection">
								<option value="Latte">Latte</option>
								<option value="Cappucino">Cappucino</option>
							</select><br>
							<p>Select brew and shot selection</p>
							<select class="form-control" name="beanSelection">
								<option value="Light">Light</option>
								<option value="Medium">Medium</option>
								<option value="Medium-Dark">Medium-Dark</option>
								<option value="Dark">Dark</option>
								<option value="Decaf">Decaf</option>
							</select>
							<select class="form-control" name="shotSelection">
								<option value="Single-shot">Single-shot</option>
								<option value="Double-shot">Double-shot</option>
								<option value="Triple-shot">Triple-shot</option>
								<option value="Quad-shot">Quad-shot</option>
							</select><br>
							<p>Select size and flavor</p>
							<select class="form-control" name="sizeSelection">
								<option value=8>8oz</option>
								<option value=10>10oz</option>
								<option value=12>12oz</option>
								<option value=16>16oz</option>
							</select>
							<select class="form-control" name="flavorSelection">
								<option value="plain">plain</option>
								<option value="Vanilla">Vanilla</option>
								<option value="Mocha">Mocha</option>
								<option value="Hazelnut">Hazelnut</option>
								<option value="Cinnabon">Cinnabon</option>
							</select><br>
							<input class="btn btn-light" type="submit" value="Submit">
						</form>
					</div>
				</div>
				<div class="col-6 col-md">
					<h2>Caffe Americano</h2>
					<img alt="" src="http://www.delonghi.com/Global/recipes/Coffee/long.png">
					<p>For all you drip fans, but better tasting<br>than that overcooked gas station stuff</p>
					<div class="form-group">
						<form action="americanoMenu">
							<p>Select brew and shot selection</p>
							<select class="form-control" name="beanSelection">
								<option value="Light">Light</option>
								<option value="Medium">Medium</option>
								<option value="Medium-Dark">Medium-Dark</option>
								<option value="Dark">Dark</option>
								<option value="Decaf">Decaf</option>
							</select>
							<select class="form-control" name="shotSelection">
								<option value="Single-shot">Single-shot</option>
								<option value="Double-shot">Double-shot</option>
								<option value="Triple-shot">Triple-shot</option>
								<option value="Quad-shot">Quad-shot</option>
							</select><br>
							<p>Select size and cream selection</p>
							<select class="form-control" name="sizeSelection">
								<option value=8>8oz</option>
								<option value=10>10oz</option>
								<option value=12>12oz</option>
								<option value=16>16oz</option>
								<option value=24>24oz</option>
								<option value=40>40oz</option>
							</select>
							<select class="form-control" name="creamSelection">
								<option value="Black">Black</option>
								<option value="Half & Half">Half & Half</option>
								<option value="Heavy Cream">Heavy Cream</option>
								<option value="French Vanilla">French Vanilla</option>
								<option value="Hazelnut">Hazelnut</option>
								<option value="Mocha">Mocha</option>
								<option value="Cinnabon">Cinnabon</option>
							</select><br>
							<input class="btn btn-light" type="submit" value="Submit">
						</form>
					</div>
				</div>
			</div>	
		
			<div id="footer" class="row">
				<div class="col-md">
					<small>© 2018 Cosmic Java Co.</small>
				</div>
			</div>
		</div>
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
	</body>
</html>