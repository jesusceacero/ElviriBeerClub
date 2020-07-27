/**
 * 
 */
package com.salesianostriana.dam;

import java.util.List;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.salesianostriana.dam.model.IngresoCuota;
import com.salesianostriana.dam.servicios.IngresoCuotaServicio;

/**
 * @author jesus
 *
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class IngresoCuotaServicioTest {
	
	@Autowired
	IngresoCuotaServicio ingresoCuotaServicio;
	
	@Test
	public void test_totalCuotas() {
		double total =0;
		List<IngresoCuota> listado=ingresoCuotaServicio.findAll();
		
		for (IngresoCuota i : listado) {
			total += i.getCuantia();
		}
		
		assertEquals(total,ingresoCuotaServicio.totalCuotas(),0.001);
	}

}
