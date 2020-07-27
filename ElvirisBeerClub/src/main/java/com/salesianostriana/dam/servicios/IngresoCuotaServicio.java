/**
 * 
 */
package com.salesianostriana.dam.servicios;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.salesianostriana.dam.model.Evento;
import com.salesianostriana.dam.model.IngresoCuota;
import com.salesianostriana.dam.repository.IngresoCuotaRepository;
import com.salesianostriana.dam.servicios.base.BaseService;

/**
 * Esta es una clase de servicios del repositorio de ingresos de cuotas.
 * @author jceacero
 *
 */
@Service
public class IngresoCuotaServicio extends BaseService<IngresoCuota, Long, IngresoCuotaRepository>{

	/**
	 * Este es el metodo que te devuelve el tota de los ingresos por las cuotas.
	 * @return Te devuelve un double.
	 */
	public double totalCuotas() {
		double total =0;
		List<IngresoCuota> listado=findAll();
		
		for (IngresoCuota i : listado) {
			total += i.getCuantia();
		}
		return total;
	}
	
	public Page<IngresoCuota> findAllPageable(Pageable pageable) {
		return repositorio.findAll(pageable);
      
	}
}
