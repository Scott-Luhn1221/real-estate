package com.claimtwo.real_estate;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan(basePackages = "com.claimtwo")
@SpringBootApplication
public class RealEstateApplication
{
	public static void main(String[] args)
	{
		SpringApplication.run(RealEstateApplication.class, args);
	}
}
