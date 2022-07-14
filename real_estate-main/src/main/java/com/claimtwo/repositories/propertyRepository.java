package com.claimtwo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.claimtwo.entity.Property;

@Repository
public interface propertyRepository extends JpaRepository<Property, Integer> {

}
