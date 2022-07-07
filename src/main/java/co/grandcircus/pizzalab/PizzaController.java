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
	// show pizza madlib page
	@RequestMapping("/madlib")
	public String showMadlib() {
		return "madlib";
	}
	
	@PostMapping("/madlib") 
	public String submitMadlib(@RequestParam String food1, @RequestParam String occupation1, 
			@RequestParam String name1, @RequestParam String name2, @RequestParam String name3, 
			@RequestParam String location1, @RequestParam String adjective1, @RequestParam String verb1, 
			@RequestParam String bodypart1, Model model) {
		model.addAttribute("food1", food1);
		model.addAttribute("name1", name1);
		model.addAttribute("name2", name2);
		model.addAttribute("name3", name3);
		model.addAttribute("occupation1", occupation1);
		model.addAttribute("location1", location1);
		model.addAttribute("adjective1", adjective1);
		model.addAttribute("verb1", verb1);
		model.addAttribute("bodypart1", bodypart1);
		
		return "madlib";
	}
	
	// displays filled out review
	@RequestMapping("/displaymadlib")
	public String displayMadlib(@RequestParam String food1, @RequestParam String occupation1, 
			@RequestParam String name1, @RequestParam String name2, @RequestParam String name3, 
			@RequestParam String location1, @RequestParam String adjective1, @RequestParam String verb1, 
			@RequestParam String bodypart1, Model model) {
		model.addAttribute("food1", food1);
		model.addAttribute("name1", name1);
		model.addAttribute("name2", name2);
		model.addAttribute("name3", name3);
		model.addAttribute("occupation1", occupation1);
		model.addAttribute("location1", location1);
		model.addAttribute("adjective1", adjective1);
		model.addAttribute("verb1", verb1);
		model.addAttribute("bodypart1", bodypart1);
		return "displaymadlib";
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
		
		MathMethods.specialtyPizzaPrice(size, model);
	
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

	@RequestMapping("/displaycustompizza") 
	public String displayCustomPizza(@RequestParam String size, @RequestParam String crust,
			@RequestParam String sauce, @RequestParam (name = "cheese", required = false, defaultValue="No Cheese") String cheese, 
			@RequestParam (name = "toppings", required = false, defaultValue="None Selected") String toppings, @RequestParam String request,
			Model model) {
		model.addAttribute("size", size);
		model.addAttribute("crust", crust);
		model.addAttribute("sauce", sauce);
		model.addAttribute("cheese", cheese);
		model.addAttribute("toppings", toppings);
		model.addAttribute("request", request);

		MathMethods.customPizzaPrice(size, crust, cheese, toppings, model);
		
		return "displaycustompizza";
	}
}
