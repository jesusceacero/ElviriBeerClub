package com.salesianostriana.dam.seguridad;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * Esta es la clase para configurar la seguridad.
 * @author jesus
 *
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{

	private UserDetailsService userDetailsService;
	
	public SecurityConfig(UserDetailsService userDetailsService) {
		this.userDetailsService = userDetailsService;
	}
	
	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
		
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.authorizeRequests()
				.antMatchers("/css/**","/js/**","/webjars/**","/h2-console/**", "/inicio","/quienes","/images/**",
						"/eventos","/cervezas","/img/**","/acceso-denegado","/cervezas/buscar","/eventos/buscar").permitAll()
				.antMatchers("/socios","/contabilidad","/formCervezas","/formEventos","/formSocios","/formCuotas",
						"/formGastos","/gastos","/ingresosCuota","/ingresosEventos","/total","/contabilidad/add/gasto",
						"/gasto/borrar/{id}","/gastos/editar/{id}","/contabilidad/add/cuota","/cuota/borrar/{id}",
						"/cuota/editar/{id}").hasAnyRole("ADMIN")
				.anyRequest().authenticated()
				.and()
			.formLogin()
				.loginPage("/inicio")
				.permitAll()
				.and()
			.logout()
				.logoutUrl("/logout")
				.permitAll()
				.and()
			.exceptionHandling()
				.accessDeniedPage("/acceso-denegado");
			
		
		http.csrf().disable();
		http.headers().frameOptions().disable();
		
	}
}
