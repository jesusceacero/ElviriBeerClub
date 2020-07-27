package com.salesianostriana.dam;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.salesianostriana.dam.model.Cerveza;
import com.salesianostriana.dam.model.Evento;
import com.salesianostriana.dam.model.Gasto;
import com.salesianostriana.dam.model.IngresoCuota;
import com.salesianostriana.dam.model.Socio;
import com.salesianostriana.dam.servicios.CervezaServicio;
import com.salesianostriana.dam.servicios.EventoServicio;
import com.salesianostriana.dam.servicios.GastoServicio;
import com.salesianostriana.dam.servicios.IngresoCuotaServicio;
import com.salesianostriana.dam.servicios.SocioServicio;
import com.salesianostriana.dam.storage.StorageProperties;
import com.salesianostriana.dam.storage.StorageService;

/**
 * Este es el main de programa.
 * @author jesus
 *
 */

@SpringBootApplication
@EnableConfigurationProperties(StorageProperties.class)
public class ElvirisBeerClubApplication {

	public static void main(String[] args) {
		SpringApplication.run(ElvirisBeerClubApplication.class, args);
	}

	@Autowired
	SocioServicio socioServicio;
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	@Bean
	CommandLineRunner init(StorageService storageService) {
		
		/**
		 * Este bucle sirve para codificar las contraseñas de la base de datos.
		 */
		return (args) -> {
			storageService.init();
			
			for (Socio u : socioServicio.findAll()) {
					u.setPassword(passwordEncoder.encode(u.getPassword()));
					socioServicio.edit(u);
			
			}
		};
	}

}
