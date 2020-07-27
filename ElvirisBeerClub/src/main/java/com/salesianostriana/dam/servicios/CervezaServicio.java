/**
 * 
 */
package com.salesianostriana.dam.servicios;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.salesianostriana.dam.model.Cerveza;
import com.salesianostriana.dam.repository.CervezaRepository;
import com.salesianostriana.dam.servicios.base.BaseService;

/**
 * Esta es una clase de servicios para el repositorio de cervezas.
 * 
 * @author jceacero
 *
 */
@Service
public class CervezaServicio extends BaseService<Cerveza, Long, CervezaRepository> {


	/**
	 * Este metodo te devuelve un listado con todas las las cervezas y las rutas de las fotos bien puestas.
	 * @param pageable
	 * @return Page
	 */
	public Page<Cerveza> findAllPageable(Pageable pageable) {
		Page<Cerveza> lista=repositorio.findAll(pageable);
      
		for (Cerveza c : lista) {
			c.setFoto("/images/"+c.getFoto());
		}

		return lista;
    }
	
	/**
	 * Este es el metodo que te devuelve el listado de cervezas con la ruta adecuada de las fotos.
	 * @return
	 */
	public List<Cerveza> todasCervezasConRutaImagen() {
		List<Cerveza> lista = repositorio.findAll();

		lista = lista.stream().map(c -> {
			c.setFoto("/images/" + c.getFoto());
			return c;
		}).collect(Collectors.toList());

		return lista;
	}

	/**
	 * Este es el metodo que te devuelve el listado de las cervezas que queremos buscar con la ruta de las fotos adecuada.
	 * @param nombre
	 * @return
	 */
	public Page<Cerveza> buscarNombre(String nombre,Pageable pageable) {
		Page<Cerveza> lista =	repositorio.findByNombreContainingIgnoreCase(nombre,pageable);
				
		for (Cerveza c : lista) {
			c.setFoto("/images/"+c.getFoto());
		}

		return lista;
	}

}
