<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Madlibs</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Pizza Madlibs!</h1>
    <form action="/displaymadlib" method="post">
        <table>
       		<tr><td>Enter a food: </td><td><input name="food1" type="text"/></td></tr>
            <tr><td>Enter a name: </td><td><input name="name1" type="text"/></td></tr>
        	<tr><td>Enter a verb: </td><td><input name="verb1" type="text"/></td></tr>
        	
	       </table>
      	<br>
      	<br>
        <input class="button" type="submit"/>
        <input class="button" type="reset" value="Reset" />
        <a href="/" class="button">Back</a>

        </form>
</body>
</html>