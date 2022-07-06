package co.grandcircus.pizzalab;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PizzaController {

	@RequestMapping("/")
	public String showIndex (){
		return "index";
	}
	@RequestMapping("/specialty")
	public String showSpecialtyPizzas() {
		return "specialty";
	}
	@RequestMapping("/review")
	public String showReview() {
		return "review";
	}
	@RequestMapping("/custom")
	public String showCustomPizzaBuilder() {
		return "custom";
	}
	@RequestMapping("/displayreview")
	public String displayReview(@RequestParam String name, @RequestParam String comment, @RequestParam String rating, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("comment", comment);
		model.addAttribute("rating", rating);
		
		return "displayreview";
	}
	
	@PostMapping("/review") 
	public String submitReview(@RequestParam String name,
			@RequestParam String comment, @RequestParam String rating,
			Model model) {
		model.addAttribute("name", name);
		model.addAttribute("comment", comment);
		model.addAttribute("rating", rating);
		
		return "review";
	}
	@PostMapping("/custom") 
	public String submitCustomPizza(@RequestParam String size, @RequestParam String crust,
			@RequestParam String sauce, @RequestParam String cheese, @RequestParam String toppings,
			Model model) {
		model.addAttribute("size", size);
		model.addAttribute("crust", crust);
		model.addAttribute("sauce", sauce);
		model.addAttribute("cheese", cheese);
		model.addAttribute("toppings", toppings);
		
		
		return "custom";
	}
	@RequestMapping("/displaycustompizza") 
	public String displayCustomPizza(@RequestParam String size, @RequestParam String crust,
			@RequestParam String sauce, @RequestParam String cheese, @RequestParam String toppings,
			Model model) {
		model.addAttribute("size", size);
		model.addAttribute("crust", crust);
		model.addAttribute("sauce", sauce);
		model.addAttribute("cheese", cheese);
		model.addAttribute("toppings", toppings);
	
		
		return "displaycustompizza";
	}
}
