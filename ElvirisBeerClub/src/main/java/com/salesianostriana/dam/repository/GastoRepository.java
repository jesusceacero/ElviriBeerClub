/**
 * 
 */
package com.salesianostriana.dam.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.salesianostriana.dam.model.Gasto;

/**
 * Esta es una interfaz del repositoryo de Gastos.
 * @author jceacero
 *
 */
public interface GastoRepository extends JpaRepository <Gasto, Long>{

}
