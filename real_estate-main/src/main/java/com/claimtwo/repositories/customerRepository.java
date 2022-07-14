package com.claimtwo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.claimtwo.entity.Customer;



@Repository
public interface customerRepository extends JpaRepository<Customer, String> {

	@Query("SELECT s FROM Agent s WHERE s.email = ?1 AND s.password = ?2")
	Customer loginCustomer(String email, String password);
}
