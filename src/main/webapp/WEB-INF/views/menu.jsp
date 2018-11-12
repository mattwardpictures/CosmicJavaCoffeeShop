<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Menu</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	</head>
	<body>
		<h1>Menu</h1>
		<div>
			<h2>Espresso</h2>
			<p>Select brew and shot selection</p>
			<form action="espressoMenu">
				<select name="beanSelection">
					<option value="Light">Light</option>
					<option value="Medium">Medium</option>
					<option value="Medium-Dark">Medium-Dark</option>
					<option value="Dark">Dark</option>
					<option value="Decaf">Decaf</option>
				</select>
				<select name="shotSelection">
					<option value="Single-shot Espresso">Single-shot</option>
					<option value="Double-shot Espresso">Double-shot</option>
					<option value="Triple-shot Espresso">Triple-shot</option>
					<option value="Quad-shot Espresso">Quad-shot</option>
				</select><br>
				<input type="submit" value="Submit">
			</form>
		</div>
		<div>
			<h2>Latte/Cappucino</h2>
			<form action="latteMenu">
				<select name="drinkSelection">
					<option value="Latte">Latte</option>
					<option value="Cappucino">Cappucino</option>
				</select><br>
				<select name="beanSelection">
					<option value="Light">Light</option>
					<option value="Medium">Medium</option>
					<option value="Medium-Dark">Medium-Dark</option>
					<option value="Dark">Dark</option>
					<option value="Decaf">Decaf</option>
				</select>
				<select name="shotSelection">
					<option value="Single-shot">Single-shot</option>
					<option value="Double-shot">Double-shot</option>
					<option value="Triple-shot">Triple-shot</option>
					<option value="Quad-shot">Quad-shot</option>
				</select><br>
				<select name="sizeSelection">
					<option value=8>8oz</option>
					<option value=10>10oz</option>
					<option value=12>12oz</option>
					<option value=16>16oz</option>
				</select>
				<select name="flavorSelection">
					<option value="plain">plain</option>
					<option value="Vanilla">Vanilla</option>
					<option value="Mocha">Mocha</option>
					<option value="Hazelnut">Hazelnut</option>
					<option value="Cinnabon">Cinnabon</option>
				</select><br>
				<input type="submit" value="Submit">
			</form>
		</div>
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>