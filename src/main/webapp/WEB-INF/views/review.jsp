<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html>
<html>
    <head>
    	<meta charset="UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Reviews</title>
    </head>
    <body>  
        <h1>Leave us a Review</h1>
        <form action="/displayreview" method="post">
        <table>
       		<tr><td> Name: </td><td><input name="name" type="text"/></td></tr>
        	<tr><td>Comment: </td><td><input name="comment" type="text"/></td></tr>
        	<tr><td>Rating: </td>
        	<td><input id = "5" name = "rating" type = "radio" value = "5 Star" checked = "checked"/><label for = "5">5 - Delicious</label>
	        <input id = "4" name = "rating" type = "radio" value = "4 Star"/><label for = "4">4</label>
	        <input id = "3" name = "rating" type = "radio" value = "3 Star"/><label for = "3">3</label>
	        <input id = "2" name = "rating" type = "radio" value = "2 Star"/><label for = "2">2</label>
	        <input id = "1" name = "rating" type = "radio" value = "1 Star"/><label for = "1">1 - No Thanks</label></td></tr>
	       </table>
      	<br>
      	<br>
        <input class="button" type="submit"/>
        <input class="button" type="reset" value="Reset" />
        

        </form>
    </body>
</html>