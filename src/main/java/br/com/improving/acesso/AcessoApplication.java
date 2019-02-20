package br.com.improving.acesso;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@SpringBootApplication
@EnableJpaRepositories
@ComponentScan(basePackages = "br.com.improving")
public class AcessoApplication {

	public static void main(String[] args) {
		SpringApplication.run(AcessoApplication.class, args);
	}
}
