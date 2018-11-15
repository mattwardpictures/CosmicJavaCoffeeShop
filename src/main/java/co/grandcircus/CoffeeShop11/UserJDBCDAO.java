//package co.grandcircus.CoffeeShop11;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.stereotype.Repository;
//
//@Repository
//public class UserJDBCDAO {
//
//	@Autowired
//	JdbcTemplate usersJdbcTemplate;
//
//	public int addUser(String firstname, String lastname, String email, String phonenumber, String password) {
//		String addQuery = "insert into Users(firstname, lastname, email, phonenumber, password) values(?,?,?,?,?)";
//		return usersJdbcTemplate.update(addQuery, firstname, lastname, email, phonenumber, password);
//	}
//
//}
