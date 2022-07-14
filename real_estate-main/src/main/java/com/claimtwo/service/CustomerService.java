package com.claimtwo.service;

import com.claimtwo.entity.Agent;
import com.claimtwo.entity.Customer;
import com.claimtwo.repositories.customerRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class CustomerService
{
	@Autowired

	customerRepository customerRepository;

	public void saveCustomer(Customer c1) {
		customerRepository.save(c1);
	}

	public List<Customer> getAllCustomers() {
		return customerRepository.findAll();
	}

	public void deleteCustomerById(String email) {
		customerRepository.deleteById(email);
	}
	public Customer findCustomerLogin(String email, String password) {
		return customerRepository.loginCustomer(email, password);
	}
	public Optional<Customer> getCustomerById(String email) {
		return customerRepository.findById(email);
	}

}