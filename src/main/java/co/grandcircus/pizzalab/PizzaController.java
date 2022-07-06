package co.grandcircus.pizzalab;


import java.text.DecimalFormat;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PizzaController {
	// show index page
	@RequestMapping("/")
	public String showIndex (){
		return "index";
	}
	// show specialty pizza page
	@RequestMapping("/specialty")
	public String showSpecialtyPizzas() {
		return "specialty";
	}
	// show review page
	@RequestMapping("/review")
	public String showReview() {
		return "review";
	}
	// show custom pizza page
	@RequestMapping("/custom")
	public String showCustomPizzaBuilder() {
		return "custom";
	}
	// displays empty review page - ready for input
	@PostMapping("/review") 
	public String submitReview(@RequestParam String name,
			@RequestParam String comment, @RequestParam String rating,
			Model model) {
		model.addAttribute("name", name);
		model.addAttribute("comment", comment);
		model.addAttribute("rating", rating);
		
		return "review";
	}
	// displays filled out review
	@RequestMapping("/displayreview")
	public String displayReview(@RequestParam String name, @RequestParam String comment, @RequestParam String rating, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("comment", comment);
		model.addAttribute("rating", rating);
		
		return "displayreview";
	}
	// displays filled out specialty pizza order
	@RequestMapping("/displayspecialty")
	public String displaySpecialty(@RequestParam String pizza, @RequestParam String size, Model model) {
		model.addAttribute("size", size);
		model.addAttribute("pizza", pizza);
		
		return "displayspecialty";
	}
	// displays specialty pizza page - ready for input
		@PostMapping("/specialty") 
		public String submitSpecialtyPizza(@RequestParam String pizza, @RequestParam String size, Model model) {
			model.addAttribute("size", size);
			model.addAttribute("pizza", pizza);
			return "specialty";
		}
	
	// displays custom pizza page - ready for input
	@PostMapping("/custom") 
	public String submitCustomPizza(@RequestParam String size, @RequestParam String crust,
			@RequestParam String sauce, @RequestParam String cheese, @RequestParam String toppings, @RequestParam String request,
			Model model) {
		model.addAttribute("size", size);
		model.addAttribute("crust", crust);
		model.addAttribute("sauce", sauce);
		model.addAttribute("cheese", cheese);
		model.addAttribute("toppings", toppings);
		model.addAttribute("request", request);
		
		
		return "custom";
	}
	// displays custom pizza that customer is ordering
	// needs to implement order logic
	@RequestMapping("/displaycustompizza") 
	public String displayCustomPizza(@RequestParam String size, @RequestParam String crust,
			@RequestParam String sauce, @RequestParam String cheese, @RequestParam String toppings, @RequestParam String request,
			Model model) {
		model.addAttribute("size", size);
		model.addAttribute("crust", crust);
		model.addAttribute("sauce", sauce);
		model.addAttribute("cheese", cheese);
		model.addAttribute("toppings", toppings);
		model.addAttribute("request", request);
		
		double total = 0;
		String finalTotal = "";
		int numToppings = toppings.split(",").length;
		model.addAttribute("numToppings", numToppings);
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
		
		if (gf = true) {
			allergy += "Gluten Free: Yes";
		}
		
		if (cheese.contains("(v)") || toppings.contains("(v)")) {
			allergy += " Vegan: Yes";
		}
		
		model.addAttribute("allergy", allergy);
		
		DecimalFormat doubleZero = new DecimalFormat("0.00");
		finalTotal = doubleZero.format(total);
		
		model.addAttribute("finalTotal", finalTotal);
		
		return "displaycustompizza";
	}
}
