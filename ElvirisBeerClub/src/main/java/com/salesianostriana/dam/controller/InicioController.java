/**
 * 
 */
package com.salesianostriana.dam.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.salesianostriana.dam.model.Socio;
import com.salesianostriana.dam.servicios.SocioServicio;

/**
 * Esta clase contiene los controller de inicio.
 * @author jceacero
 *
 */

@Controller
public class InicioController {
	
	@Autowired
	SocioServicio socioServicio;

	/**
	 * Este es el metodo que te envia a la pagina de inicio.
	 * @return Devuelve la pagina de inicio.
	 */
	@GetMapping({"/","/inicio"})
    public String inicio(Model model, Principal principal) {
		Socio s = socioServicio.socioLogueado(model,principal);
		model.addAttribute("nombreSocio", s);
        return "plantillas/inicio.html";
    }
	
	/**
	 * Este es el metodo que te envia a la pagina de acceso denegado.
	 * @param model Este es el model auxiliar.
	 * @param principal Este es el usuario registrado.
	 * @return Te devuelve la pagina de acceso denegado.
	 */
	@GetMapping("/acceso-denegado")
	public String index(Model model, Principal principal) {
		Socio s = socioServicio.socioLogueado(model,principal);
		model.addAttribute("nombreSocio", s);
		return "/acceso-denegado";
	}
}
