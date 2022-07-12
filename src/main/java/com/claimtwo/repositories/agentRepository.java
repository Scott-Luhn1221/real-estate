package com.claimtwo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.claimtwo.entity.Agent;

@Repository
public interface agentRepository extends JpaRepository<Agent, String> {


}
