package co.grandcircus.CoffeeShop11;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class FoodJDBCDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;

	public List<Food> findAllFoods() {
		return jdbcTemplate.query("select * from food", new BeanPropertyRowMapper<Food>(Food.class));
	}

	public List<Food> findByCategory(String category) {
		return jdbcTemplate.query("select * from food where category like '%" + category + "%'",
				new BeanPropertyRowMapper<Food>(Food.class));

	}

	public int addFood(String name, String category, String description, double price) {
		String addQuery = "insert into food(name, category, description, price) values(?,?,?,?)";
		return jdbcTemplate.update(addQuery, name, category, description, price);
	}

	public int updateFood(int id, String name, String category, String description, double price) {
		String updateQuery = "update food set name=?, category=?, description=?, price=? where id=?";
		return jdbcTemplate.update(updateQuery, name, category, description, price, id);
	}

	public int deleteFood(int id) {
		String deleteQuery = "delete from food where id=?";
		return jdbcTemplate.update(deleteQuery, id);
	}

}
