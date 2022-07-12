package com.claimtwo.controller;

import com.claimtwo.entity.Agent;
import com.claimtwo.entity.Customer;
import com.claimtwo.entity.Property;
import com.claimtwo.service.AgentService;
import com.claimtwo.service.CustomerService;
import com.claimtwo.service.PropertyService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class UserController {
	@Autowired
	AgentService agentService;

	@Autowired
	CustomerService customerService;

	@Autowired
	PropertyService propertyService;

	@GetMapping("/")
	public String welcome(Model model, HttpSession session) {
		return "index";
	}

	@GetMapping("/customer-sign-up")
	public ModelAndView customerSignUp(Model model) {
		return new ModelAndView("customer-sign-up", "customer", new Customer());
	}

	@PostMapping("/customer-sign-up")
	public String handleCustomerSignUp(Model model, @ModelAttribute("customer") Customer customer, HttpSession session) {
		customerService.saveCustomer(customer);
		session.getAttribute("setCustomer");
		List<Property> list = propertyService.getAllProperties();
		System.out.println(list);
		model.addAttribute("property", list);
		System.out.println("PROPERTY ATTRIBUTE: " + model.addAttribute(list));
		return "customer-profile";
	}



	@GetMapping("/agent-sign-up")
	public ModelAndView agentSignUp(Model model) {
		return new ModelAndView("agent-sign-up", "agent", new Agent());
	}

	@PostMapping("/agent-sign-up")
	public String handleAgentSignUp(Model model, @ModelAttribute("agent") Agent agent, HttpSession session) {
		agentService.saveAgent(agent);
		session.getAttribute("setAgent");
		List<Property> list = propertyService.getAllProperties();
		System.out.println(list);
		model.addAttribute("property", list);
		System.out.println("PROPERTY ATTRIBUTE: " + model.addAttribute(list));
		return "agent-profile";
	}

	@GetMapping("/agent-login")
	public ModelAndView agentLogin(Model model) {
		return new ModelAndView("agent-login", "agent", new Agent());
	}

	@PostMapping("/agent-login")
	public String handleAgentLogIn(Model model, @ModelAttribute("agent") Agent agent, HttpSession session) {
		model.addAttribute("newAgent", agent);
		session.setAttribute("newAgent", agent);
		return "agent-profile";
	}

	@GetMapping("/agent-profile")
	public ModelAndView agentProfile(Model model, HttpSession session) {
		session.getAttribute("setAgent");
		List<Property> list = propertyService.getAllProperties();
		System.out.println(list);
		model.addAttribute("property", list);
		System.out.println("PROPERTY ATTRIBUTE: " + model.addAttribute(list));
		return new ModelAndView("propertylist", "property", new Property());
	}

	@GetMapping("/customer-profile")
	public ModelAndView customerProfile(Model model, HttpSession session) {
		session.getAttribute("setCustomer");
		List<Property> list = propertyService.getAllProperties();
		System.out.println(list);
		model.addAttribute("property", list);
		System.out.println("PROPERTY ATTRIBUTE: " + model.addAttribute(list));
		return new ModelAndView("propertylist", "property", new Property());
	}

	@GetMapping("/customer-login")
	public ModelAndView customerLogin(Model model) {
		return new ModelAndView("customer-login", "customer", new Customer());
	}

	@GetMapping("/add-property")
	public String addProperty(Model model, HttpSession session) {
		model.addAttribute("property", new Property());
		return "add-property";
	}

	@PostMapping("/add-property")
	public ModelAndView handedAddedProperty(Model model, @ModelAttribute("property") Property property, HttpSession session) {
		propertyService.saveProperty(property);
		session.getAttribute("setAgent");
		List<Property> list = propertyService.getAllProperties();
		System.out.println(list);
		model.addAttribute("property", list);
		System.out.println("PROPERTY ATTRIBUTE: " + model.addAttribute(list));
		return new ModelAndView("agent-profile");
	}
	

}
