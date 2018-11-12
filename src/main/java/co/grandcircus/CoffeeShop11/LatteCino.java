package co.grandcircus.CoffeeShop11;

import org.springframework.stereotype.Component;

@Component
public class LatteCino extends Coffee {

	private String drink;
	private String flavor;
	private int size;

	public LatteCino() {

	}

	public LatteCino(String bean, String shotNumber) {
		super(bean, shotNumber);

	}

	public LatteCino(String drink, String flavor, int size) {
		super();
		this.drink = drink;
		this.flavor = flavor;
		this.size = size;
	}

	public String getDrink() {
		return drink;
	}

	public void setDrink(String drink) {
		this.drink = drink;
	}

	public String getFlavor() {
		return flavor;
	}

	public void setFlavor(String flavor) {
		this.flavor = flavor;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	@Override
	public String toString() {
		return super.toString() + "<p>" + size + "oz " + flavor + " " + drink + "</p>";
	}

}
