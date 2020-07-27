/**
 * 
 */
package com.salesianostriana.dam.model;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Esta es una clase modelo del ingreso de una cuota.
 * @author jceacero
 *
 */
@Data
@NoArgsConstructor
@Entity
public class IngresoCuota {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	/**
	 * @param fecha Contiene la fecha que se realizo el pago.
	 */
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate fecha;
	/**
	 * @param cuantia Contiene la cuantia del pago de la cuorta.
	 */
	private double cuantia;
	
	@ManyToOne (fetch = FetchType.LAZY)
	/**
	 * @param socio Contiene una referencia al socio que hace el ingreso.
	 */
	private Socio socio;
	
	/**
	 * @param fecha
	 * @param cuantia
	 */
	public IngresoCuota(LocalDate fecha, double cuantia) {
		this.fecha = fecha;
		this.cuantia = cuantia;
	}

	/**
	 * @param fecha
	 * @param cuantia
	 * @param socio
	 */
	public IngresoCuota(LocalDate fecha, double cuantia, Socio socio) {
		this.fecha = fecha;
		this.cuantia = cuantia;
		this.socio = socio;
	}

	
	
}
