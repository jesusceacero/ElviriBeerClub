/**
 * 
 */
package com.salesianostriana.dam.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.salesianostriana.dam.model.Cerveza;

/**
 * Esta es una interfaz del repositorio de las cervezas.
 * @author jceacero
 *
 */
public interface CervezaRepository extends JpaRepository <Cerveza , Long> {
	
	/*@Query("select c.id, c.nombre, c.marca, c.descripcion, c.pvp, c.precioSocio, concat('/images/', c.foto) from Cerveza c")
	public List<Cerveza> todasCervezasConRutaImagen();*/

	/**
	 * Esta es una consulta que que devuelve el listado buscando por nombre.
	 * @param nombre Este es el nombre que mdeseamos buscar.
	 * @return Te devuelve un List.
	 */
	Page<Cerveza> findByNombreContainingIgnoreCase(String nombre,Pageable pageable);
	
}
