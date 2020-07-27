/**
 * 
 */
package com.salesianostriana.dam.forbean;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Esta el cla clase de un ForBean para poder buscar.
 * @author jesus
 *
 */


public class BuscarNombreForBean {
	
	/**
	 * Este es el atributo de nombre.
	 */
	private String nombre;

	/**
	 * Este es un constructor vaico.
	 */
	public BuscarNombreForBean() {
	
	}

	/**
	 * Este es el get del nombre.
	 * @return
	 */
	public String getNombre() {
		return nombre;
	}

	/**
	 * Este es el set del nombte.
	 * @param nombre
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
	
	

}
