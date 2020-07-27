package com.salesianostriana.dam.controller;

import java.security.Principal;
import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.salesianostriana.dam.model.Evento;
import com.salesianostriana.dam.model.Socio;
import com.salesianostriana.dam.servicios.EventoServicio;
import com.salesianostriana.dam.servicios.SocioServicio;

/**
 * Esta el la clase que contiene los controller de Reservas.
 * @author jesus
 *
 */

@Controller
public class ReservasController {
	
	@Autowired
	SocioServicio socioServicio;
	@Autowired
	EventoServicio eventoServicio;
	
	/**
	 * Este es el medoto que de devuelve la pagina de reservas,
	 * tambien te permiteborrarlas.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registrado.
	 * @return Te devuelve la pagina de reservas.
	 */
	@GetMapping({ "/reservas" })
	public String reservas(Model model, Principal principal) {
		Socio s = socioServicio.socioLogueado(model, principal);
		model.addAttribute("nombreSocio", s);
		LocalDate hoy = LocalDate.now();
		model.addAttribute("hoy", hoy);

		return "plantillas/reservas.html";
	}
	
	/**
	 * Este es el metodo para borrar la reserva deseada.
	 * @param id Este es el ide de la reserva que queremos borrar.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registramo.
	 * @return Te devuelve la pagina de reservas.
	 */
	@GetMapping("/reserva/borrar/{id}")
	public String borrarGasto(@PathVariable("id") long id,Model model, Principal principal) {
		Evento e = eventoServicio.findById(id);
		Socio s = socioServicio.socioLogueado(model, principal);
		s.deleteEvento(e);
		socioServicio.save(s);
		return "redirect:/reservas.html";
	}

}
