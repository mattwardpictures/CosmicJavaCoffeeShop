package co.grandcircus.CoffeeShop11;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.CoffeeShop11.Person;

public interface PersonRepository extends JpaRepository<Person, Integer> {

}
