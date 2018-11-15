package co.grandcircus.CoffeeShop11;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "Users")
@NamedQuery(name = "find_all_persons", query = "select p from Person p")
public class Person {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private Integer id;

	private String firstname, lastname, email, phone, password;

	public Person() {

	}

	public Person(Integer id, String firstname, String lastname, String email, String phone, String password) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}

	public Person(String firstName, String lastName, String email, String phoneNumber, String password) {
		this.firstname = firstName;
		this.lastname = lastName;
		this.email = email;
		this.phone = phoneNumber;
		this.password = password;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstName) {
		this.firstname = firstName;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastName) {
		this.lastname = lastName;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phoneNumber) {
		this.phone = phoneNumber;
	}

	@Override
	public String toString() {
		return "<h3>" + id + " " + firstname + " " + lastname + "</h3><h3>" + "Email: " + email + "</h3><h3>"
				+ "Phone: " + phone + "</h3><h3>" + "Password: " + password + "</h3>";
	}

}