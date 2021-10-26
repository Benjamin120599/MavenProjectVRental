package com.rbvj.atos.vrental;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.PropertySource;
import org.springframework.scheduling.annotation.EnableScheduling;



@SpringBootApplication
//@ComponentScan({"com.rbvj.atos.vrental.controller"})
//@ComponentScan(basePackages = {"com.rbvj.atos.vrental.service"})
public class VrentalApplication {

	public static void main(String[] args) {
		SpringApplication.run(VrentalApplication.class, args);
	}

}
