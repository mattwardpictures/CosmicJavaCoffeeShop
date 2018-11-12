package co.grandcircus.CoffeeShop11;

import org.springframework.stereotype.Component;

@Component
public class Coffee {

	private String bean, shotNumber;

	public Coffee() {
		super();

	}

	public Coffee(String bean, String shotNumber) {
		super();
		this.bean = bean;
		this.shotNumber = shotNumber;
	}

	public String getBean() {
		return bean;
	}

	public void setBean(String bean) {
		this.bean = bean;
	}

	public String getShotNumber() {
		return shotNumber;
	}

	public void setShotNumber(String shotNumber) {
		this.shotNumber = shotNumber;
	}

	@Override
	public String toString() {
		return "<p>" + bean + " " + shotNumber + "</p>";
	}

}
