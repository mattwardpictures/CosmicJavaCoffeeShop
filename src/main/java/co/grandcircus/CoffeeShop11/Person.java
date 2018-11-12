package co.grandcircus.CoffeeShop11;

import org.springframework.stereotype.Component;

@Component
public class Person {

	private String firstName, lastName, email, phoneNumber, password;

	public Person() {
		super();

	}

	public Person(String firstName, String lastName, String email, String password, String phoneNumber) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.phoneNumber = phoneNumber;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Override
	public String toString() {
		return "<h3>" + firstName + " " + lastName + "</h3><h3>" + "Email: " + email + "</h3><h3>" + "Phone: "
				+ phoneNumber + "</h3><h3>" + "Password: " + password + "</h3>";
	}

}