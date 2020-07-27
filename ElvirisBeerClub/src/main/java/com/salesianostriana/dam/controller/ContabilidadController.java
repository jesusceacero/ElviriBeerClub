/**
 * 
 */
package com.salesianostriana.dam.controller;

import java.security.Principal;
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

import com.salesianostriana.dam.model.Evento;
import com.salesianostriana.dam.model.Gasto;
import com.salesianostriana.dam.model.IngresoCuota;
import com.salesianostriana.dam.model.Socio;
import com.salesianostriana.dam.paginacion.Pager;
import com.salesianostriana.dam.servicios.EventoServicio;
import com.salesianostriana.dam.servicios.GastoServicio;
import com.salesianostriana.dam.servicios.IngresoCuotaServicio;
import com.salesianostriana.dam.servicios.SocioServicio;

/**
 * Esta el la clase que contiene los controller de contavilidad.
 * 
 * @author jesus
 *
 */
@Controller
public class ContabilidadController {

	@Autowired
	GastoServicio gastoServicio;

	@Autowired
	IngresoCuotaServicio ingresoCuotaServicio;

	@Autowired
	EventoServicio eventoServicio;
	@Autowired
	SocioServicio socioServicio;
	
	private static final int BUTTONS_TO_SHOW = 5;
	private static final int INITIAL_PAGE = 0;
	private static final int INITIAL_PAGE_SIZE = 5;
	private static final int[] PAGE_SIZES = { 5, 10, 20, 50 };

	/**
	 *  Este es el metodo que te devuelve la pagina de gatos
	 * tambien te da la opción de listar, añadir, modificar y borrar gastos.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registrado.
	 * @return Te devuelve la pagina de gastos.
	 */
	@GetMapping({ "/gastos" })
	public String gastos(@RequestParam("pageSize") Optional<Integer> pageSize,
			@RequestParam("page") Optional<Integer> page,Model model, Principal principal) {
		int evalPageSize = pageSize.orElse(INITIAL_PAGE_SIZE);
		int evalPage = (page.orElse(0) < 1) ? INITIAL_PAGE : page.get() - 1;
		Page<Gasto> persons = gastoServicio.findAllPageable(PageRequest.of(evalPage, evalPageSize));
		Pager pager = new Pager(persons.getTotalPages(), persons.getNumber(), BUTTONS_TO_SHOW);
		model.addAttribute("listaGastos", persons);
		model.addAttribute("selectedPageSize", evalPageSize);
		model.addAttribute("pageSizes", PAGE_SIZES);
		model.addAttribute("pager", pager);
		
		Socio s = socioServicio.socioLogueado(model, principal);
		model.addAttribute("nombreSocio", s);

		List<Evento> eventos = eventoServicio.findAll();

		model.addAttribute("listaEventos", eventos);
		model.addAttribute("gasto", new Gasto());
		model.addAttribute("totalGastos", gastoServicio.totalGastos());

		return "plantillas/gastos.html";
	}

	/**
	 * Este metodo te manda a la pagina de los ingresos de cuotas,
	 * tambien te da la opción de listar, editar, borrar y añadir ingresos de cuotas.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registrado.
	 * @return Te devuelve la pagina de ingresos de cuotas.
	 */
	@GetMapping({ "/ingresosCuota" })
	public String ingresosCuota(@RequestParam("pageSize") Optional<Integer> pageSize,
			@RequestParam("page") Optional<Integer> page,Model model, Principal principal) {
		int evalPageSize = pageSize.orElse(INITIAL_PAGE_SIZE);
		int evalPage = (page.orElse(0) < 1) ? INITIAL_PAGE : page.get() - 1;
		Page<IngresoCuota> persons = ingresoCuotaServicio.findAllPageable(PageRequest.of(evalPage, evalPageSize));
		Pager pager = new Pager(persons.getTotalPages(), persons.getNumber(), BUTTONS_TO_SHOW);;
		model.addAttribute("selectedPageSize", evalPageSize);
		model.addAttribute("pageSizes", PAGE_SIZES);
		model.addAttribute("pager", pager);
		
		
		Socio s = socioServicio.socioLogueado(model, principal);
		model.addAttribute("nombreSocio", s);

		
		List<Socio> socios = socioServicio.findAll();

		model.addAttribute("cuota", new IngresoCuota());
		model.addAttribute("listaSocios", socios);
		model.addAttribute("totalCuotas", ingresoCuotaServicio.totalCuotas());
		model.addAttribute("listaCuotas", persons);

		return "plantillas/ingresosCuota.html";
	}

	/**
	 * Este metodo te manda a la pagina del listado de ingresos por eventos.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registrado.
	 * @return Te devuelve la pagina de ingresos de eventos.
	 */
	@GetMapping({ "/ingresosEventos" })
	public String ingresosEventos(@RequestParam("pageSize") Optional<Integer> pageSize,
			@RequestParam("page") Optional<Integer> page,Model model, Principal principal) {
		Socio s = socioServicio.socioLogueado(model, principal);
		model.addAttribute("nombreSocio", s);
		
		int evalPageSize = pageSize.orElse(INITIAL_PAGE_SIZE);
		int evalPage = (page.orElse(0) < 1) ? INITIAL_PAGE : page.get() - 1;
		Page<Evento> persons = eventoServicio.findAllPageable(PageRequest.of(evalPage, evalPageSize));
		Pager pager = new Pager(persons.getTotalPages(), persons.getNumber(), BUTTONS_TO_SHOW);;
		model.addAttribute("selectedPageSize", evalPageSize);
		model.addAttribute("pageSizes", PAGE_SIZES);
		model.addAttribute("pager", pager);


		model.addAttribute("totalEventos", eventoServicio.totalEventos());
		model.addAttribute("listaEventos", persons);

		return "plantillas/ingresosEventos.html";
	}

	/**
	 * Este metodo te manda al listado de las cuentas totales del club.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registrado.
	 * @return Te devuelve la pagina de cuentas totales.
	 */
	@GetMapping({ "/total" })
	public String total(Model model, Principal principal) {
		Socio s = socioServicio.socioLogueado(model, principal);
		model.addAttribute("nombreSocio", s);
		double total;
		double totalEventos = eventoServicio.totalEventos();
		double totalCuotas = ingresoCuotaServicio.totalCuotas();
		double totalGastos = gastoServicio.totalGastos();
		total = totalEventos + totalCuotas - totalGastos;
		model.addAttribute("totalCuotas", totalCuotas);
		model.addAttribute("totalGastos", totalGastos);
		model.addAttribute("totalEventos", totalEventos);
		model.addAttribute("total", total);

		return "plantillas/total.html";
	}

	/**
	 * Este metodo te guarda en la base de datos el gasto introducido en el fomulario.
	 * @param g Este es el gasto que deseamos guardar.
	 * @return Te devuelve la lista de gastos.
	 */
	@PostMapping("/contabilidad/add/gasto")
	public String addGasto(@ModelAttribute("gasto") Gasto g) {
		gastoServicio.save(g);
		return "redirect:/gastos";
	}

	/**
	 * Este es el metodo que elimina el gasto deseado.
	 * @param id Este es el id del gasto que deseamos borrar.
	 * @return Te devuelve el listado de gastos.
	 */
	@GetMapping("/gasto/borrar/{id}")
	public String borrarGasto(@PathVariable("id") long id) {
		gastoServicio.deleteById(id);
		return "redirect:/gastos";
	}

	/**
	 * Este es el metodo que edita el gasto deseado.
	 * @param id Este es el ide del gasto que deseamos modificar.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registrado.
	 * @return Te devuelve la pagina con el formulario para editar.
	 */
	@GetMapping("/gastos/editar/{id}")
	public String editarGasto(@PathVariable("id") long id, Model model, Principal principal) {
		Socio s = socioServicio.socioLogueado(model, principal);
		model.addAttribute("nombreSocio", s);

		Gasto aEditar = gastoServicio.findById(id);
		List<Evento> eventos = eventoServicio.findAll();

		model.addAttribute("listaEventos", eventos);

		model.addAttribute("gasto", aEditar);
		return "formularios/formGastos.html";

	}

	/**
	 * Este es el metodo que te que te añade la cuota insertda en el formulario.
	 * @param c Esta es la cuota que deseamos guardar en la base de datos.
	 * @return Te devuelve el listado de ingresos de cuotas.
	 */
	@PostMapping("/contabilidad/add/cuota")
	public String addCuota(@ModelAttribute("cuota") IngresoCuota c) {
		ingresoCuotaServicio.save(c);
		return "redirect:/ingresosCuota";
	}
	
	/**
	 * Este es el metodo que te borra de la base de datos la cuota deseado.
	 * @param id Este es el id de la cuota que deseamos borrar.
	 * @return Te devuelve la pagina del listado de ingreso de cuotas.
	 */
	@GetMapping("/cuota/borrar/{id}")
	public String borrarCuota(@PathVariable("id") long id) {
		ingresoCuotaServicio.deleteById(id);
		return "redirect:/ingresosCuota";
	}
	
	/**
	 * Este es el metodo que edita la cuota deseada.
	 * @param id Este es el id de la cuota que deseamos borrar.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registrado.
	 * @return Te devuelve la pagina del listado de cuotas.
	 */
	@GetMapping("/cuota/editar/{id}")
	public String editarCuota(@PathVariable("id") long id, Model model, Principal principal) {
		Socio s = socioServicio.socioLogueado(model, principal);
		model.addAttribute("nombreSocio", s);

		IngresoCuota aEditar = ingresoCuotaServicio.findById(id);
		List<Socio> socios = socioServicio.findAll();

		model.addAttribute("listaSocios", socios);

		model.addAttribute("cuota", aEditar);
		return "formularios/formCuotas.html";

	}
}
