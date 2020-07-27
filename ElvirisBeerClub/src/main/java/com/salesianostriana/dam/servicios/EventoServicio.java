/**
 * 
 */
package com.salesianostriana.dam.servicios;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.salesianostriana.dam.model.Evento;
import com.salesianostriana.dam.repository.EventoRepository;
import com.salesianostriana.dam.servicios.base.BaseService;

/**
 * Esta es una clase de servicio para el repositorio de eventos.
 * @author jceacero
 *
 */
@Service
public class EventoServicio extends BaseService<Evento,Long,EventoRepository>{
	
	/**
	 * Este metodo te devuelve un listado con todas las los eventos.
	 * @param pageable
	 * @return Page
	 */
	public Page<Evento> findAllPageable(Pageable pageable) {
		return repositorio.todosOrdenados(pageable);
      
	}
	
	/**
	 * Este es el metodo que te debueleve el resultado de la consulta realizada.
	 * @param nombre Este es el parametro que deseamos buscar.
	 * @return 
	 */
	public List<Evento> buscarNombre(String nombre){
		return repositorio.findByNombreContainingIgnoreCaseOrderByFechaDesc(nombre);
	}
	/**
	 * Este es el metodo que te devuelve el total de los ingresas por lo eventos.
	 * @return Te devuelve un double.
 	 */
	public double totalEventos() {
		List<Evento> lista= repositorio.findAll();
		double total = 0;
		for (Evento e : lista) {
			total+= e.getSocios().size() * e.getPrecio();
		}
		
		return total;
	}

}
