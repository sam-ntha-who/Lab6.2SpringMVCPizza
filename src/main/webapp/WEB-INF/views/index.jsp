<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html>
<html>
    <head>
    	<meta charset="UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Welcome to Scaini's Pizza</title>
    </head>
    <body>  
        <h1>Scaini's Pizza</h1>
       <div class="links">
        <a href="/specialty" class="button">Specialty Pizzas</a>     
      
       <a href="/custom" class="button">Custom Pizza Builder</a>

       <a href="/review" class="button">Leave a Review</a>
       
       <a href="/madlib" class="button">Madlibs!</a>
       <br>
       <br>
     </div>
     <div class="image">
    <img src='../images/pizzaforyou.jpeg' alt="Pizza Margherita" class="centerimage">
    </div>
    </body>
</html>