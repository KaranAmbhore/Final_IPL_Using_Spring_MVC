package com.tka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@SpringBootApplication
@EnableAspectJAutoProxy
public class FinalIplApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(FinalIplApiApplication.class, args);
		System.out.println("SpringBoot Started..");
	}

}