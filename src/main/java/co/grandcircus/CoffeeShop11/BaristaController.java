package co.grandcircus.CoffeeShop11;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BaristaController {

	@Autowired
	private Person p;

	@Autowired
	private Coffee coffee;

	@Autowired
	private LatteCino latteCino;

	@Autowired
	private Drip americano;

	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("index");

		return mv;
	}

	@RequestMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("register");
	}

	@RequestMapping("formresults")
	public ModelAndView formTest(@RequestParam("firstname") String fname, @RequestParam("lastname") String lname,
			@RequestParam("email") String email, @RequestParam("phone") String phoneNumber,
			@RequestParam("password") String password) {
		p.setFirstName(fname);
		p.setLastName(lname);
		p.setEmail(email);
		p.setPhoneNumber(phoneNumber);
		p.setPassword(password);
		return new ModelAndView("formpage", "userData", p);
	}

	@RequestMapping("/menu")
	public ModelAndView menu() {
		return new ModelAndView("menu");
	}

	@RequestMapping("espressoMenu")
	public ModelAndView espresso(@RequestParam("beanSelection") String bean,
			@RequestParam("shotSelection") String shot) {
		coffee.setBean(bean);
		coffee.setShotNumber(shot);
		return new ModelAndView("orderform", "userData", coffee);
	}

	@RequestMapping("latteMenu")
	public ModelAndView latte(@RequestParam("drinkSelection") String drink, @RequestParam("beanSelection") String bean,
			@RequestParam("shotSelection") String shot, @RequestParam("sizeSelection") int size,
			@RequestParam("flavorSelection") String flavor) {
		latteCino.setDrink(drink);
		latteCino.setBean(bean);
		latteCino.setShotNumber(shot);
		latteCino.setSize(size);
		latteCino.setFlavor(flavor);
		return new ModelAndView("orderform", "userData", latteCino);
	}

	@RequestMapping("americanoMenu")
	public ModelAndView drip(String drink, @RequestParam("beanSelection") String bean,
			@RequestParam("shotSelection") String shot, @RequestParam("sizeSelection") int size,
			@RequestParam("creamSelection") String cream) {
		americano.setBean(bean);
		americano.setShotNumber(shot);
		americano.setSize(size);
		americano.setCream(cream);
		return new ModelAndView("orderform", "userData", americano);
	}

}
