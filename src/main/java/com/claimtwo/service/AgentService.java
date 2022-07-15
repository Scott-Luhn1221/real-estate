package com.claimtwo.service;

import com.claimtwo.entity.Agent;
import com.claimtwo.repositories.agentRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class AgentService {
	@Autowired

	agentRepository agentRepository;

	public void saveAgent(Agent a1) {
		agentRepository.save(a1);
	}

	public List<Agent> getAllAgents() {
		return agentRepository.findAll();
	}

	public void deleteAgentById(String email) {
		agentRepository.deleteById(email);
	}

}
