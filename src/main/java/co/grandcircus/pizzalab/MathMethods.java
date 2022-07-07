package co.grandcircus.pizzalab;

import java.text.DecimalFormat;

import org.springframework.ui.Model;

public class MathMethods {

	
	public static void customPizzaPrice(String size, String crust, String cheese, String toppings, Model model) {
		double total = 0;
		String finalTotal = "";
		int numToppings = toppings.split(",").length;
		boolean gf = false;
		String allergy = "";
		if (size.equals("Small")) {
			total = 7 + (numToppings * .50); 
		} else if (size.equals("Medium")) {
			total = 10 + (numToppings * 1.00);
		} else if (size.equals("Large")) {
			total = 12 + (numToppings * 1.25);
		} else if (size.equals("XLarge")) {
			total = 15 + (numToppings * 1.50);
		}
		
		if (crust.equals("Gluten Free")) {
			gf = true;
			total += 2.00;
		}
		
		if (gf == true) {
			allergy += "Gluten Free: Yes";
		}
		
		if (cheese.contains("(v)")) {
			allergy += " Dairy Free: Yes";
		}
		
		if (toppings.contains("(v)")) {
			allergy += " Vegan: Yes";
		}
		DecimalFormat doubleZero = new DecimalFormat("0.00");
		finalTotal = doubleZero.format(total);
		
		model.addAttribute("allergy", allergy);
		model.addAttribute("finalTotal", finalTotal);
	}
	
	public static void specialtyPizzaPrice(String size, Model model) {
		
	double total = 0;
	String price = "";

	if (size.equals("Small")) {
		total = 10; 
	} else if (size.equals("Medium")) {
		total = 12;
	} else if (size.equals("Large")) {
		total = 15;
	} else if (size.equals("XLarge")) {
		total = 18;
	}

	DecimalFormat doubleZero = new DecimalFormat("0.00");
	price = doubleZero.format(total);
	model.addAttribute("price", price);
	
	
	}

}
