/**
 * 
 */
package com.salesianostriana.dam.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.salesianostriana.dam.model.Evento;

/**
 * Esta es una interfaz del repositoryo de Eventos.
 * @author jceacero
 *
 */
public interface EventoRepository extends JpaRepository <Evento , Long>{
	
	/**
	 * Esta es una consulta que para filtrar por nombre los eventos.
	 * @param nombre Este es el nombre por el que deseamos filtrar.
	 * @return Te devuelve un List.
	 */
	
	@Query("select e from Evento e Order by e.fecha desc")
	public Page<Evento> todosOrdenados(Pageable pageable);
	
	List<Evento> findByNombreContainingIgnoreCaseOrderByFechaDesc(String nombre);

}
