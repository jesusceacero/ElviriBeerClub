/**
 * 
 */
package com.salesianostriana.dam.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.salesianostriana.dam.model.Socio;

/**
 * Esta es una interfaz del repositoryo de socios.
 * @author jceacero
 *
 */
public interface SocioRepository extends JpaRepository <Socio, Long>{
	
	/**
	 * Esta es una consulta para buscar por email.
	 * @param email Este es el email que deseamos buscar.
	 * @return Tedevuelve un socio.
	 */
	public Socio findFirstByEmail(String email);

	/**
	 * Esta es una consulta para buscar por nombre, apellidos o email.
	 * @param nombre Este es el parametro que deseamos buscar.
	 * @param apellidos Este es el parametro que deseamos buscar.
	 * @param email Este es el parametro que deseamos buscar.
	 * @return Te devuelve un List.
	 */
	public Page<Socio> findByNombreContainingIgnoreCaseOrApellidosContainingIgnoreCaseOrEmailContainingIgnoreCase(String nombre, String apellidos,String email,Pageable pageable);
}
