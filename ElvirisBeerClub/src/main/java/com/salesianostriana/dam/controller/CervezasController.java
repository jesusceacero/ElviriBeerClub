/**
 * 
 */
package com.salesianostriana.dam.controller;

import java.security.Principal;
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
import org.springframework.web.multipart.MultipartFile;

import com.salesianostriana.dam.forbean.BuscarNombreForBean;
import com.salesianostriana.dam.forbean.CervezaFormBean;
import com.salesianostriana.dam.model.Cerveza;
import com.salesianostriana.dam.model.Socio;
import com.salesianostriana.dam.paginacion.Pager;
import com.salesianostriana.dam.servicios.CervezaFormBeanService;
import com.salesianostriana.dam.servicios.CervezaServicio;
import com.salesianostriana.dam.servicios.SocioServicio;

/**
 * Esta el la clase que contiene los controller de cervezas.
 * @author jceacero
 *
 */

@Controller
public class CervezasController {
	
	@Autowired
	SocioServicio socioServicio;
	
	@Autowired
	CervezaServicio cervezaServicio;
	
	@Autowired
	CervezaFormBeanService cervezaFormBeanService;
	
	private static final int BUTTONS_TO_SHOW = 5;
	private static final int INITIAL_PAGE = 0;
	private static final int INITIAL_PAGE_SIZE = 5;
	private static final int[] PAGE_SIZES = { 5, 10, 20, 50 };
	
	/**
	 * Este es el metodo que te envia a la pagina de Cervezas,
	 * tambien te da la opcion de listarlas, añadir cerezas, borrar y editar las cervezas.
	 * @param model Este es el objeto auxiliar.
	 * @return Devuelve la pagina de Cervezas.
	 */
	@GetMapping("/cervezas")
    public String cervezas(@RequestParam("pageSize") Optional<Integer> pageSize,
			@RequestParam("page") Optional<Integer> page,@RequestParam("nombre") Optional<String> nombre, Model model, Principal principal) {
		int evalPageSize = pageSize.orElse(INITIAL_PAGE_SIZE);
		int evalPage = (page.orElse(0) < 1) ? INITIAL_PAGE : page.get() - 1;
		 String evalNombre = nombre.orElse(null);
		 Page<Cerveza> listaCervezas = null;
	        
	        if (evalNombre == null) {
	        	listaCervezas = cervezaServicio.findAllPageable(PageRequest.of(evalPage, evalPageSize));
	        } else {
	        	listaCervezas = cervezaServicio.buscarNombre(evalNombre, PageRequest.of(evalPage, evalPageSize));
	        }
		
		Pager pager = new Pager(listaCervezas.getTotalPages(), listaCervezas.getNumber(), BUTTONS_TO_SHOW);
		
		model.addAttribute("listaCervezas", listaCervezas);
		model.addAttribute("selectedPageSize", evalPageSize);
		model.addAttribute("pageSizes", PAGE_SIZES);
		model.addAttribute("pager", pager);
		model.addAttribute("cerveza", new CervezaFormBean());
		Socio s = socioServicio.socioLogueado(model,principal);;
		model.addAttribute("nombreSocio", s);
        return "plantillas/cervezas.html";
    }
	
	/**
	 * Este metodo te reenvia a la pagia de cevezas depues de realizar la busqueda  requerida.
	 * @param nombre Este es el nombre que deseamos buscar.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registrado.
	 * @return Te devuelve el listado de cervezas.
	 */
	@PostMapping("/cervezas/buscar")
	public String socios(@ModelAttribute("buscar") BuscarNombreForBean nombre, Model model, Principal principal) {
		Socio s = socioServicio.socioLogueado(model, principal);
		model.addAttribute("nombreSocio", s);
		

		model.addAttribute("cerveza", new CervezaFormBean());
		
		return "plantillas/cervezas.html";
	}
	
	/**
	 * Este es el metodo que te guarda las cervezas añadidas.
	 * @param c Aqui se le pasa la nueva cerveza.
	 * @return Devuelve la pagina de cervezas actualizada.
	 */
	@PostMapping("/cervezas/submit")
	public String procesarCerveza(@ModelAttribute("cerveza") Cerveza c) {
		cervezaServicio.save(c);
		return "redirect:/cervezas";
	}
	
	/**
	 * Este metodo guarda en la base de datos la cerveza introducida en el formulario.
	 * @param c Este es el forBeen con los datos de la cerveza.
	 * @param file	Esta es la foto de la cerveza.
	 * @param model Este es el model auxiliar.
	 * @return Te devuelve el listado de cervezas.
	 */
	@PostMapping("/cervezas/add")
	public String addCerveza(@ModelAttribute("cerveza") CervezaFormBean c, 
			@RequestParam("file") MultipartFile file, Model model) {
		Cerveza cer = new Cerveza();
		
		cer.setNombre(c.getNombre());
		cer.setMarca(c.getMarca());
		cer.setDescripcion(c.getDescripcion());
		cer.setPrecioSocio(c.getPrecioSocio());
		cer.setPvp(c.getPvp());
		
		cervezaFormBeanService.add(cer,file);
		
		return "redirect:/cervezas";
	}
	
	
	/**
	 * Este es el metodod que te devuelve el formulario para editar las cervezas.
	 * @param id Este es el id de la cerveza que queremos editar.
	 * @param model Este es el model auxiliar.
	 * @return Te devuelve formlario para editar la cerveza requerida.
	 */
	@GetMapping("/cervezas/editar/{id}")
	public String mostrarFormularioEdicion(@PathVariable("id") long id, Model model,Principal principal) {
		Socio s = socioServicio.socioLogueado(model,principal);
		model.addAttribute("nombreSocio", s);
		
		Cerveza aEditar = cervezaServicio.findById(id);
		
		model.addAttribute("cerveza", aEditar);
		return "formularios/formCervezas.html";
		
	}
	
	/**
	 * Este es el metodo que sirve para borrar una cerveza.
	 * @param id Este es el id de la cerveza que queremos borrar.
	 * @return Te devuelve el listado de cervezas.
	 */
	@GetMapping("/cervezas/borrar/{id}")
	public String borrar(@PathVariable("id") long id) {
		cervezaServicio.deleteById(id);
		return "redirect:/cervezas";
	}

}
