package co.grandcircus.CoffeeShop11;

import org.springframework.stereotype.Component;

@Component
public class Drip extends Coffee {

	private String cream;
	private int size;

	public Drip() {

	}

	public Drip(String bean, String shotNumber) {
		super(bean, shotNumber);

	}

	public Drip(String cream, int size) {
		super();
		this.cream = cream;
		this.size = size;
	}

	public String getCream() {
		return cream;
	}

	public void setCream(String cream) {
		this.cream = cream;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	@Override
	public String toString() {
		return super.toString() + "<p>" + size + "oz " + cream + " coffee" + "</p>";
	}

}
