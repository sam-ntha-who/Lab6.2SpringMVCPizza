<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Specialty Pizzas</title>
    </head>
    <body>  
        <h1>Specialty Pizzas</h1>
           <form action="/displayspecialty" method="post">
        <table>
        <tr><td><h2>Margherita</h2>
        <ul>
        <li>Olive Oil</li>
        <li>Mozzarella Cheese</li>
        <li>Basil</li>
        <li>Tomatoes</li>
        </ul>
        <input id = "Margherita" name = "pizza" type = "radio" value = "Margherita" checked = "checked"/><label for = "Margherita">Order Margherita</label>

        </td></tr>
        
        <tr><td><h2>BBQ Chick-Un</h2>
        <ul>
        <li>BBQ Sauce</li>
        <li>Mozzarella Cheese</li>
        <li>Chik'n (v)</li>
        <li>Red Onion</li>
        </ul>
        <input id = "BBQ Chick-Un" name = "pizza" type = "radio" value = "BBQ Chick-Un"/><label for = "BBQ Chick-Un">Order BBQ Chick-Un</label>

    	</td></tr>
        
        <tr><td><h2>Momma's Kitchen</h2>
        <ul>
        <li>House Made Tomato Sauce</li>
        <li>Mozzarella Cheese</li>
        <li>Bacon</li>
        <li>Green Olives</li>
        <li>Onions</li>
        </ul>
        
        <input id = "Momma's Kitchen" name = "pizza" type = "radio" value = "Momma's Kitchen"/><label for = "Momma's Kitchen">Order Momma's Kitchen</label>
        </td></tr>
        
    	<tr><td><h2>Hamburglar</h2>
        <ul>
        <li>House Made Tomato Sauce</li>
        <li>Cheddar Cheese</li>
        <li>Hamburger</li>
        <li>Bacon</li>
        <li>Tomato</li>
        <li>Onion</li>
        </ul>
        <input id = "Hamburglar" name = "pizza" type = "radio" value = "Hamburglar"/><label for = "Hamburglar">Order Hamburglar</label>
 
        </td></tr>
        
    </table>
   			
            <br>
            <label for="size">Choose a size:</label>
                           <select name="size" id="cars">
  <option value="Small">Small</option>
  <option value="Medium">Medium</option>
  <option value="Large">Large</option>
  <option value="XLarge">XLarge</option>
</select>
      	<br>
      	<br>
        <input class="button" type="submit"/>
        <input class="button" type="reset" value="Reset" />
        <a href="/" class="button">Back</a>
         </form>
    </body>
</html>