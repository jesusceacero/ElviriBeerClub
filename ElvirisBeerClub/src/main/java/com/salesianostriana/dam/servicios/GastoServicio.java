/**
 * 
 */
package com.salesianostriana.dam.servicios;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.salesianostriana.dam.model.Cerveza;
import com.salesianostriana.dam.model.Gasto;
import com.salesianostriana.dam.model.IngresoCuota;
import com.salesianostriana.dam.repository.GastoRepository;
import com.salesianostriana.dam.servicios.base.BaseService;

/**
 * Esta es una clase de servicios de el repositorio de gastos.
 * 
 * @author jceacero
 *
 */
@Service
public class GastoServicio extends BaseService<Gasto, Long, GastoRepository> {

	/**
	 * Este es el metodo que te devuelve el total de los gastos.
	 * 
	 * @return Te devuelve un double.
	 */
	public double totalGastos() {
		double total = 0;
		List<Gasto> listado = findAll();

		for (Gasto g : listado) {
			total += g.getCoste();
		}
		return total;
	}

	public Page<Gasto> findAllPageable(Pageable pageable) {
		return  repositorio.findAll(pageable);
	}
	
}
