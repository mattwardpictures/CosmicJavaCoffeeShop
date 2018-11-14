package co.grandcircus.CoffeeShop11;

public class Food {

	private String name, category, description;
	private int id;
	private double price;

	public Food() {

	}

	public Food(String name, String category, String description, int id, double price) {
		super();
		this.name = name;
		this.category = category;
		this.description = description;
		this.id = id;
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return name + " " + category + " " + description + " " + price + " " + id;
	}

}
