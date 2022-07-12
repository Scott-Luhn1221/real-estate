package com.claimtwo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.claimtwo.entity.Customer;



@Repository
public interface customerRepository extends JpaRepository<Customer, String> {

}
