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

import com.salesianostriana.dam.model.Gasto;
import com.salesianostriana.dam.servicios.GastoServicio;

/**
 * @author jesus
 *
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class GastoServicioTest {
	
	@Autowired
	GastoServicio gastoServicio;
	
	@Test
	public void test_totalGastos() {
		double total =0;
		List<Gasto> listado= gastoServicio.findAll();
		
		for (Gasto g : listado) {
			total += g.getCoste();
		}
		
		assertEquals(total,gastoServicio.totalGastos(),0.001);
		
	}

}
