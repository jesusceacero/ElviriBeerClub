/**
 * 
 */
package com.salesianostriana.dam.model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * Esta es la clase modelo de un socio.
 * @author jceacero
 *
 */
@Data
@NoArgsConstructor
@Entity
public class Socio {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	/**
	 * @param dni Contiene el DNI del socio.
	 */
	private String dni;
	/**
	 * @param nombre Contiene el nombre del socio.
	 */
	private String nombre;
	/**
	 * @param apellidos Contiene los apellidos del socio.
	 */
	private String apellidos;
	/**
	 * @param email Contiene el email del socio.
	 */
	@Column(unique = true)
	private String email;
	/**
	 * @param admin Contiene el tipo de permisos que tendra el socio.
	 */
	private boolean admin;
	/**
	 * @param cuota Contiene el precio de la cuota que tendra el socio.
	 */
	private double cuota;
	/**
	 * @param fechaAlta Contiene la fecha de alta del socio.
	 */
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate fechaAlta = LocalDate.now();
	
	/**
	 * @param pasword Esta es la contraseña del usuario.
	 */
	private String password;
	
	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	@OneToMany(mappedBy="socio")
	/**
	 * @param ingresos Contiene una referencia a sus ingresos 
	 */
	private List<IngresoCuota> ingresos = new ArrayList<IngresoCuota>();
	
	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	@ManyToMany
	@JoinTable(
			joinColumns = @JoinColumn(name="socio_id"),
			inverseJoinColumns = @JoinColumn(name="evento_id")
		)
	private List<Evento> eventos = new ArrayList<Evento>();
	
	/**
	 * @param dni
	 * @param nombre
	 * @param apellidos
	 * @param email
	 * @param admin
	 * @param cuota
	 * @param fechaAlta
	 * @param password
	 */
	public Socio(String dni, String nombre, String apellidos, String email, boolean admin, double cuota,
			LocalDate fechaAlta,String password) {
		this.dni = dni;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.email = email;
		this.admin = admin;
		this.cuota = cuota;
		this.fechaAlta = fechaAlta;
		this.password = password;
	}

	/**
	 * @param dni
	 * @param nombre
	 * @param apellidos
	 * @param email
	 * @param admin
	 * @param cuota
	 * @param fechaAlta
	 * @param ingresos
	 * @param eventos
	 */
	public Socio(String dni, String nombre, String apellidos, String email, boolean admin, double cuota,
			LocalDate fechaAlta, List<IngresoCuota> ingresos, List<Evento> eventos) {
		this.dni = dni;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.email = email;
		this.admin = admin;
		this.cuota = cuota;
		this.fechaAlta = fechaAlta;
		this.ingresos = ingresos;
		this.eventos = eventos;
	}

	/**
	 * @param id
	 * @param dni
	 * @param nombre
	 * @param apellidos
	 * @param email
	 * @param admin
	 * @param cuota
	 */
	public Socio(long id, String dni, String nombre, String apellidos, String email, boolean admin,
			double cuota) {
		this.id = id;
		this.dni = dni;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.email = email;
		this.admin = admin;
		this.cuota = cuota;
	}
	
	/**
	 * Método auxiliar para manejar la asociación bidireccional con Alumno
	 * @param a
	 */
	public void addEvento(Evento e) {
		eventos.add(e);
		e.getSocios().add(this);
	}
	
	/**
	 * Método auxiliar para manejar la asociación bidireccional con Alumno
	 * @param a
	 */
	public void deleteEvento(Evento e) {
		eventos.remove(e);
		e.getSocios().remove(this);
	}
	

	
}
