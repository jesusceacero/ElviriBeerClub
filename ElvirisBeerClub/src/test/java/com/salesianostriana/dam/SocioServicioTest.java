/**
 * 
 */
package com.salesianostriana.dam;

import static org.junit.Assert.assertEquals;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.salesianostriana.dam.model.Socio;
import com.salesianostriana.dam.servicios.SocioServicio;

/**
 * @author jesus
 *
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class SocioServicioTest {
	
	@Autowired
	SocioServicio socioServicio;
	
	@Test
	public void test_buscarPorEmail() {
		Socio s = new Socio("23963211F","Angel","Naranjo González","adminnnnn@admin.com",true,20.00,LocalDate.of(2019,2,2),"admin");
		socioServicio.save(s);
		
		assertEquals(s, socioServicio.buscarPorEmail(s.getEmail()));
	}
	
	@Test
	public void test_buscarNombre() {
		Socio s = new Socio("23963211F","alfredo","aaaaaaaaa","alfredo@admin.com",true,20.00,LocalDate.of(2019,2,2),"admin");
		socioServicio.save(s);
		List<Socio> lista = new ArrayList<Socio>();
		lista.add(s);
		//assertEquals(lista,socioServicio.buscarNombre("alfredo"));
	}
	
	
	
	
	
	

}
