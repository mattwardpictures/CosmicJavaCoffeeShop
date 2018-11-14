package co.grandcircus.CoffeeShop11;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	@Autowired
	FoodJDBCDAO dao;

	@Autowired
	UserJDBCDAO userDao;

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

	@RequestMapping("/bakery")
	public ModelAndView bakery() {
		return new ModelAndView("bakery");
	}

	@RequestMapping("/food")
	public ModelAndView listFood(@RequestParam(value = "category", required = false) String category) {
		ModelAndView mv = new ModelAndView("bakery");
		if (category != null && !category.isEmpty()) {
			mv.addObject("food", dao.findByCategory(category));
			mv.addObject("category", category);
		} else {
			mv.addObject("food", dao.findAllFoods());
		}
		return mv;
	}

	@RequestMapping("/add-food")
	public String addStuff() {
		return "food-form";
	}

	@RequestMapping(value = "newfood", method = RequestMethod.POST)
	public ModelAndView newFood(Food newFood) {
		dao.addFood(newFood.getName(), newFood.getCategory(), newFood.getDescription(), newFood.getPrice());
		return new ModelAndView("redirect:/food");
	}

	@RequestMapping(value = "newuser", method = RequestMethod.POST)
	public ModelAndView newUser(Person newUser) {
		userDao.addUser(newUser.getFirstName(), newUser.getLastName(), newUser.getEmail(), newUser.getPhoneNumber(),
				newUser.getPassword());
		return new ModelAndView("redirect:/Users");
	}

	@RequestMapping("/update")
	public ModelAndView updateForm(@RequestParam("id") int idFromPage) {

		return new ModelAndView("update-form", "id", idFromPage);
	}

	@RequestMapping("update-food")
	public ModelAndView updateFood(Food updateFoodList) {
		dao.updateFood(updateFoodList.getId(), updateFoodList.getName(), updateFoodList.getCategory(),
				updateFoodList.getDescription(), updateFoodList.getPrice());
		return new ModelAndView("redirect:/food");
	}

	@RequestMapping("/delete")
	public ModelAndView remove(@RequestParam("id") int id) {
		dao.deleteFood(id);
		return new ModelAndView("redirect:/food");
	}

}
