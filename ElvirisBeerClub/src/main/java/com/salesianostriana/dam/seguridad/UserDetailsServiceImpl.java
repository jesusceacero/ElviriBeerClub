/**
 * 
 */
package com.salesianostriana.dam.seguridad;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.salesianostriana.dam.model.Socio;
import com.salesianostriana.dam.servicios.SocioServicio;

/**
 * @author jesus
 *
 */
@Service("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService{

	SocioServicio socioServicio;
	
	public UserDetailsServiceImpl(SocioServicio servicio) {
		this.socioServicio = servicio;
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		Socio socio = socioServicio.buscarPorEmail(username);
		
		UserBuilder userBuilder = null;
		
		if (socio != null) {
			userBuilder = User.withUsername(socio.getEmail());
			userBuilder.disabled(false);
			userBuilder.password(socio.getPassword());
			if (socio.isAdmin()) {
				userBuilder.authorities(new SimpleGrantedAuthority("ROLE_USER"), new SimpleGrantedAuthority("ROLE_ADMIN"));				
			} else {
				userBuilder.authorities(new SimpleGrantedAuthority("ROLE_USER"));				
			}
		} else {
			throw new UsernameNotFoundException("Usuario no encontrado");
		}
			
		return userBuilder.build();
		
	}
	
	
}
