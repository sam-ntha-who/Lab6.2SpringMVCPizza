<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>Custom Pizza</title>
</head>
<body>
<h1>Your Pizza</h1>
<h3>Size: ${size}</h3>
<h3>Crust: ${crust}</h3>
<h3>Sauce: ${sauce}</h3>
<h3>Cheese: ${cheese}</h3>
<h3>Toppings: ${toppings}</h3>
<h3>Special Requests: ${request}</h3>
<h3>Food Sensitivities: ${allergy}</h3>
<h3>Total: $${finalTotal}</h3>
<br>
<a href="/" class="button">Home</a>
</body>
</html>