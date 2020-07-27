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
 * Esta es la clase que contiene los controller de Quienes Somos.
 * @author jceacero
 *
 */

@Controller
public class QuienesController {

	@Autowired
	SocioServicio socioServicio;
	
	/**
	 * Este es el metodo que te envia a la pagina de inicio.
	 * @return Devuelve la pagina de Quiene Somos.
	 */
	@GetMapping("/quienes")
    public String quienes(Principal principal,Model model) {
		Socio s = socioServicio.socioLogueado(model,principal);
		model.addAttribute("nombreSocio", s);
		
        return "plantillas/quienes.html";
    }
}
