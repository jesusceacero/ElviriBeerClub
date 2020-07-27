/**
 * 
 */
package com.salesianostriana.dam.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Esta es la clase modelo de una cerveza.
 * @author Jesús Ceacero
 *
 */
@Data 
@NoArgsConstructor
@Entity
public class Cerveza {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	/**
	 * @param nombre Contiene el nombre de la cerveza.
	 */
	private String nombre;
	/**
	 * @param marca Contiene el nombre de la marca que fabrica la cerveza.
	 */
	private String marca;
	/**
	 * @param Contiene la descripción de la cerveza.
	 */
	private String descripcion;
	/**
	 * @param pvp Contiene el precio de la cerveza de venta al publico.
	 */
	private double pvp;
	/**
	 * @param Contiene el precio de la cerveza de venta al socio.
	 */
	private double precioSocio;
	/**
	 * @param foto Contiene la foto de la cerveza.
	 */
	private String foto;
	
	
	/**
	 * @param nombre
	 * @param marca
	 * @param descripcion
	 * @param pvp
	 * @param precioSocio
	 * @param foto
	 */
	public Cerveza(String nombre, String marca, String descripcion, double pvp, double precioSocio, String foto) {
		this.nombre = nombre;
		this.marca = marca;
		this.descripcion = descripcion;
		this.pvp = pvp;
		this.precioSocio = precioSocio;
		this.foto = foto;
	}
	
	

}
