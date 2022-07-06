<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Review</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div>
<h2>Thanks for taking the time to leave a review!</h2>
<h3>My name is: ${name}</h3>
<h3>This is how I feel about the food: ${comment}</h3>
<h3>I give it a ${rating} rating</h3>

</div>
<a href="/" class="button">Back</a>
</body>
</html>