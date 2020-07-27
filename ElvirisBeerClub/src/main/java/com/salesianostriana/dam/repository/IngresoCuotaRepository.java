/**
 * 
 */
package com.salesianostriana.dam.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.salesianostriana.dam.model.IngresoCuota;

/**
 * Esta es una interfaz del repositoryo de los ingresos de las cuotas.
 * @author jceacero
 *
 */
public interface IngresoCuotaRepository extends JpaRepository <IngresoCuota, Long>{

}
