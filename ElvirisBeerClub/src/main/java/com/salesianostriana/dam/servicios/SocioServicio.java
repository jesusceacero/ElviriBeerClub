/**
 * 
 */
package com.salesianostriana.dam.servicios;

import java.security.Principal;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.salesianostriana.dam.model.Evento;
import com.salesianostriana.dam.model.Socio;
import com.salesianostriana.dam.repository.SocioRepository;
import com.salesianostriana.dam.servicios.base.BaseService;

/**
 * Esta es una clase servicio para el repositorio de socios.
 * 
 * @author jceacero
 *
 */
@Service
public class SocioServicio extends BaseService<Socio, Long, SocioRepository> {
	
	/**
	 * Este el el metodo que te devuelve todos los socios.
	 * @param pageable
	 * @return Te devuelve un Page.
	 */
	public Page<Socio> findAllPageable(Pageable pageable) {
        return repositorio.findAll(pageable);
    }

	/**
	 * Este es el metodo que te devuelve el resultado de la consulta para buscar.
	 * @param email Este es el parametro que deseamos buscar.
	 * @return Te devuelve un socio.
	 */
	public Socio buscarPorEmail(String email) {
		return repositorio.findFirstByEmail(email);
	}

	/**
	 * Este es el metodo para reservar un evento.
	 * @param e Este es evento que deseamos reservar.
	 * @param model Este es un model auxiliar.
	 * @param principal Este es el usuario regustrado.
	 */
	public void addEven(Evento e, Model model, Principal principal) {
		Socio s = socioLogueado(model, principal);
		s.addEvento(e);

		repositorio.save(s);

	}

	/**
	 * Este es el metodo para conseguir el usuario que esta registrado.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registrado.
	 * @return Te devuelve un usuario.
	 */
	public Socio socioLogueado(Model model, Principal principal) {

		if (principal != null) {
			String email = principal.getName();
			Socio s = buscarPorEmail(email);
			model.addAttribute("logeado", s);

			return s;
		} else {
			return null;
		}

	}

	/**
	 * Este es el metodo que te devuelve la lista de la consulta para buscar.
	 * @param nombre Este es el parametro que deseamos buscar.
	 * @return Te devuelve un List.
	 */
	public Page<Socio> buscarNombre(String nombre,Pageable pageable) {

		return repositorio.findByNombreContainingIgnoreCaseOrApellidosContainingIgnoreCaseOrEmailContainingIgnoreCase(nombre,nombre,nombre,pageable);
	}

}
