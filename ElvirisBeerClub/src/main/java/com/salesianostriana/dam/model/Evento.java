/**
 * 
 */
package com.salesianostriana.dam.model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * Esta es la clase model de un evento.
 * @author jceacero
 *
 */
@Data
@NoArgsConstructor
@Entity
public class Evento {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	/**
	 * @param nombre Contiene el nombre del evento.
	 */
	private String nombre;
	/**
	 * @param fecha Contiene la fecha del evento.
	 */
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate fecha;
	/**
	 * @param precio Contiene el precio del evento.
	 */
	private double precio;
	/**
	 * @param nPlazas Contiene el numero de plazas de las que dispone el evento.
	 */
	private int nPlazas;
	/**
	 * @param descripcion Contiene la descripción del evento.
	 */
	private String descripcion;
	
	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	@OneToMany(mappedBy="evento")
	/**
	 * @param gastos Contiene una referencia a sus gastos 
	 */
	private List<Gasto> gastos = new ArrayList<Gasto>();
	
	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	@ManyToMany(mappedBy="eventos")
	private List<Socio> socios = new ArrayList<Socio>();
	
	/**
	 * @param nombre
	 * @param fecha
	 * @param precio
	 * @param nPlazas
	 * @param descripcion
	 */
	public Evento(String nombre, LocalDate fecha, double precio, int nPlazas, String descripcion) {
		this.nombre = nombre;
		this.fecha = fecha;
		this.precio = precio;
		this.nPlazas = nPlazas;
		this.descripcion = descripcion;
	}
	
	/**
	 * Método auxiliar para el tratamiento bidireccional de la asociación. Añade a un alumno
	 * a la colección de alumnos de un curso, y asigna a dicho alumno este curso como el suyo.
	 * @param a
	 */
	public void addAlumno(Gasto g) {
		this.gastos.add(g);
		g.setEvento(this);
	}
	
	/**
	 * Método auxiliar para el tratamiento bidireccional de la asociación. Elimina un alumno
	 * de la colección de alumnos de un curdso, y desasigna a dicho alumno el curso, dejándolo como nulo.
	 * @param a
	 */
	public void removeAlumno(Gasto g) {
		this.gastos.remove(g);
		g.setEvento(null);
	}
	
	/**
	 * Este metodo el numero total de socios que an reservado un evento.
	 * @return Double.
	 */
	public int contar() {
		int total = 0;
		
		for (Socio s : socios) {
			total++;
		}
		
		return total;
	}


}
