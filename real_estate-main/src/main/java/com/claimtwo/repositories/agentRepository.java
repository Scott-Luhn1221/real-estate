package com.claimtwo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.claimtwo.entity.Agent;

@Repository
public interface agentRepository extends JpaRepository<Agent, String> {

	@Query("SELECT s FROM Agent s WHERE s.email = ?1 AND s.password = ?2")
	Agent loginAgent(String email, String password);
}
