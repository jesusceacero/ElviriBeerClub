/**
 * 
 */
package com.salesianostriana.dam.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Esta es la clase modelo de un gasto
 * @author jceacero
 *
 */
@Data
@NoArgsConstructor
@Entity
public class Gasto {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	/**
	 * @param evento Contiene una referencia al socio que hace el ingreso.
	 */
	@ManyToOne (fetch = FetchType.LAZY)
	private Evento evento;
	/**
	 * @oaram nombre Contiene el nombre del gasto.
	 */
	private String nombre;
	/**
	 * @param coste Contiene el coste del gasto. 
	 */
	private double coste;
	
	
	
	/**
	 * @param evento
	 * @param nombre
	 * @param coste
	 */
	public Gasto(Evento evento, String nombre, double coste) {
		this.evento = evento;
		this.nombre = nombre;
		this.coste = coste;
	}

}
