<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Custom Pizza Builder</title>
    </head>
    <body>  
        <h1>Roll Your Own</h1>
        <form action="/displaycustompizza" method="post">
		<h2>Select your size</h2>
			<input id = "s" name = "size" type = "radio" value = "Small" checked = "checked"/><label for = "s">S</label>
			<input id = "m" name = "size" type = "radio" value = "Medium"/><label for = "m">M</label>
			<input id = "l" name = "size" type = "radio" value = "Large"/><label for = "l">L</label>
			<input id = "xl" name = "size" type = "radio" value = "XLarge"/><label for = "xl">XL</label>
		<h2>Select your crust</h2>
			<input id = "detroit style" name = "crust" type = "radio" value = "Detroit Style" checked = "checked"/><label for = "5">Detroit Style</label>
	        <input id = "thin" name = "crust" type = "radio" value = "Thin"/><label for = "4">Thin Crust</label>
	        <input id = "gluten free" name = "crust" type = "radio" value = "Gluten Free"/><label for = "3">Gluten Free</label>
	    <h2>Select your sauce</h2>
			<input id = "tomato" name = "sauce" type = "radio" value = "House Made Tomato Sauce" checked = "checked"/><label for = "tomato">House Made Tomato Sauce</label>
	        <input id = "white" name = "sauce" type = "radio" value = "White Sauce"/><label for = "white">White Sauce</label>
	        <input id = "pesto" name = "sauce" type = "radio" value = "Pesto"/><label for = "pesto">Pesto</label>    
	        <input id = "balsamic" name = "sauce" type = "radio" value = "Balsamic Reduction"/><label for = "balsamic">Balsamic Reduction</label>    
	        <input id = "evoo" name = "sauce" type = "radio" value = "Olive Oil"/><label for = "evoo">Olive Oil</label>    
        <h2>Select your cheese(s)</h2>
        <input name="cheese" type="checkbox" value="Buffalo Mozzarella"/><label for = "Buffalo Mozzarella">Buffalo Mozzarella</label>
        <input name="cheese" type="checkbox" value="Ricotta"/><label for = "Ricotta">Ricotta</label>
        <input name="cheese" type="checkbox" value="Cheddar"/><label for = "Cheddar">Cheddar</label>
        <input name="cheese" type="checkbox" value="Miyoko Mozzarella (v)"/><label for = "Miyoko Mozzarella (v)">Miyoko Mozzarella (v)</label>
        <h4>(v) = Vegan</h4>
        <h2>Select your meat(s)</h2>
        <input name="toppings" type="checkbox" value="Pepperoni"/><label for = "Pepperoni">Pepperoni</label>
        <input name="toppings" type="checkbox" value="Spicy Pepperoni"/><label for = "Spicy Pepperoni">Spicy Pepperoni</label>
        <input name="toppings" type="checkbox" value="Italian Sausage"/><label for = "Italian Sausage">Italian Sausage</label>
        <input name="toppings" type="checkbox" value="Ham"/><label for = "Ham">Ham</label>
        <input name="toppings" type="checkbox" value="Bacon"/><label for = "Bacon">Bacon</label>
        <input name="toppings" type="checkbox" value="Chicken"/><label for = "Chicken">Chicken</label>
        <input name="toppings" type="checkbox" value="Hamburger"/><label for = "Hamburger">Hamburger</label><br>
        <input name="toppings" type="checkbox" value="Anchovy"/><label for = "Anchovy">Anchovy</label>
        <input name="toppings" type="checkbox" value="Beyond Ground Burger (v)"/><label for = "Beyond Ground Burger (v)">Beyond Ground Burger (v)</label>
        <input name="toppings" type="checkbox" value="Chick'n (v)"/><label for = "Chick'n (v)">Chick'n (v)</label>
        <h2>Select the rest</h2>
        <input name="toppings" type="checkbox" value="Onion"/><label for = "Onion">Onion</label>
        <input name="toppings" type="checkbox" value="Red Onion"/><label for = "Red Onion">Red Onion</label>
        <input name="toppings" type="checkbox" value="Green Pepper"/><label for = "Green Pepper">Green Pepper</label>
        <input name="toppings" type="checkbox" value="Mushrooms"/><label for = "Mushrooms">Mushrooms</label>
        <input name="toppings" type="checkbox" value="Garlic"/><label for = "Garlic">Garlic</label>
        <input name="toppings" type="checkbox" value="Jalepeño"/><label for = "Jalepeño">Jalepeño</label>
        <input name="toppings" type="checkbox" value="Black Olives"/><label for = "Black Olives">Black Olives</label><br>
        <input name="toppings" type="checkbox" value="Green Olives"/><label for = "Green Olives">Green Olives</label>
        <input name="toppings" type="checkbox" value="Tomato"/><label for = "Tomato">Tomato</label>
        <input name="toppings" type="checkbox" value="Arugula"/><label for = "Arugula">Arugula</label>
        <input name="toppings" type="checkbox" value="Basil"/><label for = "Basil">Basil</label>
        <input name="toppings" type="checkbox" value="Artichokes"/><label for = "Artichokes">Artichokes</label>
        <input name="toppings" type="checkbox" value="Pineapple"/><label for = "Pineapple">Pineapple</label>
            	<br>
      	<br>
        <input class="button" type="submit"/>
        <input class="button" type="reset" value="Reset" />
        </form>
    </body>
</html>