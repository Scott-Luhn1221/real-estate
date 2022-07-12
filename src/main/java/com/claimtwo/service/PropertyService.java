package com.claimtwo.service;

import com.claimtwo.entity.Agent;
import com.claimtwo.repositories.propertyRepository;
import com.claimtwo.entity.Property;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PropertyService {
	@Autowired
	

	propertyRepository propertyRepository;

	public void saveProperty(Property p1) {
		propertyRepository.save(p1);
	}

	public  List<Property> getAllProperties() {
		return propertyRepository.findAll();
	}

	public void deletePropertyById(Integer id) {
		propertyRepository.deleteById(id);
	}

}
