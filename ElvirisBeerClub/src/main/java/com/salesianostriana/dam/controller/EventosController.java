/**
 * 
 */
package com.salesianostriana.dam.controller;

import java.security.Principal;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.salesianostriana.dam.forbean.BuscarNombreForBean;
import com.salesianostriana.dam.model.Cerveza;
import com.salesianostriana.dam.model.Evento;
import com.salesianostriana.dam.model.Socio;
import com.salesianostriana.dam.paginacion.Pager;
import com.salesianostriana.dam.servicios.CervezaFormBeanService;
import com.salesianostriana.dam.servicios.EventoServicio;
import com.salesianostriana.dam.servicios.SocioServicio;

/**
 * Esta es la clase que contiene los controller de Eventos.
 * @author jceacero
 *
 */

@Controller
public class EventosController {

	@Autowired
	EventoServicio eventoServicio;
	@Autowired
	SocioServicio socioServicio;
	@Autowired
	CervezaFormBeanService cervezaFormBeanService;
	
	private static final int BUTTONS_TO_SHOW = 5;
	private static final int INITIAL_PAGE = 0;
	private static final int INITIAL_PAGE_SIZE = 5;
	private static final int[] PAGE_SIZES = { 5, 10, 20, 50 };
	
	
	
	/**
	 * Este es el metodo que te envia a la pagina de Eventos,
	 * tambien te da la opción de listas y añadir eventos.
	 * @param model	Este es el objeto auxiliar.
	 * @return	Devuelve la pagina de Eventos.
	 */
	@GetMapping("/eventos")
    public String eventos(@RequestParam("pageSize") Optional<Integer> pageSize,
			@RequestParam("page") Optional<Integer> page,Model model,Principal principal) {
		int evalPageSize = pageSize.orElse(INITIAL_PAGE_SIZE);
		int evalPage = (page.orElse(0) < 1) ? INITIAL_PAGE : page.get() - 1;
		Page<Evento> persons = eventoServicio.findAllPageable(PageRequest.of(evalPage, evalPageSize));
		Pager pager = new Pager(persons.getTotalPages(), persons.getNumber(), BUTTONS_TO_SHOW);
		model.addAttribute("listaEventos", persons);
		model.addAttribute("selectedPageSize", evalPageSize);
		model.addAttribute("pageSizes", PAGE_SIZES);
		model.addAttribute("pager", pager);
		
		Socio s = socioServicio.socioLogueado(model,principal);
		model.addAttribute("nombreSocio", s);
		LocalDate hoy = LocalDate.now();
		BuscarNombreForBean nombre = new BuscarNombreForBean();
		model.addAttribute("buscar", nombre);
		
		model.addAttribute("hoy", hoy);
		model.addAttribute("evento", new Evento());
		
        return "plantillas/eventos.html";
    }
	
	/**
	 * Este es el metodo que busca los socios por el parametro pasado.
	 * @param nombre Este es el parametro de busqueda que le paramos.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registrado.
	 * @return Te devuelve al listado de eventos.
	 */
	@PostMapping("/eventos/buscar")
	public String socios(@ModelAttribute("buscar") BuscarNombreForBean nombre, Model model, Principal principal) {
		Socio s = socioServicio.socioLogueado(model, principal);
		model.addAttribute("nombreSocio", s);
		
		model.addAttribute("listaEventos", eventoServicio.buscarNombre(nombre.getNombre()));
		model.addAttribute("evento", new Evento());
		
		return "plantillas/eventos.html";
	}
	
	/**
	 * Este es el metodo para reservar un evento.
	 * @param id Este es el id del evento que queremos reservar.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registraldo.
	 * @return Te devuelve el listado de enventos.
	 */
	@GetMapping("/eventos/reserva/{id}")
	public String reservarEvento(@PathVariable("id") long id,Model model,Principal principal) {
		Evento e = eventoServicio.findById(id);
		socioServicio.addEven(e, model, principal);
		
		return "redirect:/eventos";
	}
	
	/**
	 * Este es el metodo que guarda los nuevos eventos.
	 * @param e Este es en nuevo evento que le pasamos para guardar.
	 * @return Devuelve la pagina de eventos actualizada.
	 */
	@PostMapping("/eventos/submit")
	public String procesarEvento(@ModelAttribute("evento") Evento e) {
		eventoServicio.save(e);
		return "redirect:/eventos";
	}
	
	/**
	 * Este es el metodo para editar eventos.
	 * @param id Este es el id del evento que deseamos editar.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registrado.
	 * @return Te devuelve el mormulario para editar el evento.
	 */
	@GetMapping("/eventos/editar/{id}")
	public String mostrarFormularioEdicion(@PathVariable("id") long id, Model model, Principal principal) {
		Socio s = socioServicio.socioLogueado(model,principal);
		model.addAttribute("nombreSocio", s);
		
		Evento aEditar = eventoServicio.findById(id);
		
		model.addAttribute("evento", aEditar);
		return "formularios/formEventos.html";
		
	}
	
	/**
	 * Este es el metodo para borrar un evento.
	 * @param id Este es el id del evento que queremos borrar.
	 * @return Te devuelve al listado de evento.
	 */
	@GetMapping("/eventos/borrar/{id}")
	public String borrar(@PathVariable("id") long id) {
		eventoServicio.deleteById(id);
		return "redirect:/eventos";
	}
	
	
	
}
