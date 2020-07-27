/**
 * 
 */
package com.salesianostriana.dam.controller;

import java.security.Principal;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.salesianostriana.dam.forbean.BuscarNombreForBean;
import com.salesianostriana.dam.model.Socio;
import com.salesianostriana.dam.paginacion.Pager;
import com.salesianostriana.dam.servicios.SocioServicio;

/**
 * Esta es la clase que contiene los cotroller de Socios.
 * 
 * @author jceacero
 *
 */

@Controller
public class SociosController {

	private static final int BUTTONS_TO_SHOW = 5;
	private static final int INITIAL_PAGE = 0;
	private static final int INITIAL_PAGE_SIZE = 5;
	private static final int[] PAGE_SIZES = { 5, 10, 20, 50 };

	@Autowired
	SocioServicio socioServicio;

	/**
	 * Este en el metodo que de envia a la pagina de Socios, tamvien te da la opción
	 * de listar y añadir socios.
	 * 
	 * @param model Este es el objeto auxiliar.
	 * @return Devuelve la pagina de Socios.
	 */
	@GetMapping("/socios")
	public String socios(@RequestParam("pageSize") Optional<Integer> pageSize,
			@RequestParam("page") Optional<Integer> page, @RequestParam("nombre") Optional<String> nombre, 
			Model model, Principal principal) {
		int evalPageSize = pageSize.orElse(INITIAL_PAGE_SIZE);
		int evalPage = (page.orElse(0) < 1) ? INITIAL_PAGE : page.get() - 1;
		
		 String evalNombre = nombre.orElse(null);
		 
		 Page<Socio> listaSocios = null;
		 
		 if (evalNombre == null) {
	        	listaSocios = socioServicio.findAllPageable(PageRequest.of(evalPage, evalPageSize));
	        } else {
	        	listaSocios = socioServicio.buscarNombre(evalNombre,PageRequest.of(evalPage, evalPageSize));
	        }

		Pager pager = new Pager(listaSocios.getTotalPages(), listaSocios.getNumber(), BUTTONS_TO_SHOW);
		Socio s = socioServicio.socioLogueado(model, principal);
		model.addAttribute("pager", pager);
		model.addAttribute("nombreSocio", s);
		model.addAttribute("socio", new Socio());
		model.addAttribute("listaSocios", listaSocios);
		model.addAttribute("selectedPageSize", evalPageSize);
		model.addAttribute("pageSizes", PAGE_SIZES);

		return "plantillas/socios.html";
	}

	/**
	 * Este es el metodo que guardar los nuevos Socios.
	 * 
	 * @param s Este es el nuevo socio que le pasamos.
	 * @return Devuelve la pagina de Socios actualizada.
	 */
	@PostMapping("/socios/add/submit")
	public String procesarAddSocio(@ModelAttribute("socio") Socio s) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		s.setPassword(passwordEncoder.encode(s.getPassword()));
		socioServicio.save(s);
		return "redirect:/socios";
	}

	/**
	 * Este es el metodo para editar un socio.
	 * @param s es el socio que deseamos borrar.
	 * @return Te devuelve la lista de socios.
	 */
	@PostMapping("/socios/edit/submit")
	public String procesarEditSocio(@ModelAttribute("socio") Socio s) {
		socioServicio.save(s);
		return "redirect:/socios";
	}

	/**
	 * Este es el metodo para editar un socio.
	 * @param id Este es el id del socio que deseamos editar.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registramo.
	 * @return Te devuelve el formulario para editar el socio.
	 */
	@GetMapping("/socios/editar/{id}")
	public String mostrarFormularioEdicion(@PathVariable("id") long id, Model model, Principal principal) {
		Socio s = socioServicio.socioLogueado(model, principal);
		model.addAttribute("nombreSocio", s);

		Socio aEditar = socioServicio.findById(id);

		model.addAttribute("socio", aEditar);
		return "formularios/formSocios.html";

	}

	/**
	 * Este es el metodo para borrar un socio.
	 * @param id Este es el ide del socio que deseamos borrar.
	 * @return Te devuelve el listado de socios.
	 */
	@GetMapping("/socios/borrar/{id}")
	public String borrar(@PathVariable("id") long id) {
		socioServicio.deleteById(id);
		return "redirect:/socios";
	}

}
