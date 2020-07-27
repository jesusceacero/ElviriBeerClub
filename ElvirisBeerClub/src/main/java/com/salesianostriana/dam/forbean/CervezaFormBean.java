/**
 * 
 */
package com.salesianostriana.dam.forbean;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Esta es la clase del ForBean para añadir cerveza.
 * @author jceacero
 *
 */

@Data 
@NoArgsConstructor
public class CervezaFormBean {
	
	/**
	 * Este es el atributo del nombre.
	 */
	private String nombre;
	/**
	 * Este es el Atrivuto de la marca.
	 */
	private String marca;
	/**
	 * Este es el atributo de la descripcion.
	 */
	private String descripcion;
	/**
	 * Este es el atributo del pvp.
	 */
	private double pvp;
	/**
	 * Este es el atributo del precio del socio.
	 */
	private double precioSocio;
	/**
	 * Este es el atriguto con la ruta de la foto.
	 */
	private String foto;
	/**
	 * Este es ek atributo con el id de la cerveza.
	 */
	private long id;

}
