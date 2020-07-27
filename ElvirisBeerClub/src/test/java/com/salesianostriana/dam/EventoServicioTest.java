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
import com.salesianostriana.dam.model.Evento;
import com.salesianostriana.dam.servicios.EventoServicio;

/**
 * @author jesus
 *
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class EventoServicioTest {
	
	@Autowired
	EventoServicio eventoServicio;
	
	@Test
	public void test_buscarNombre () {
		Evento e = new Evento("Wapa",LocalDate.of(2018,5,24),15.00,25,"Cata de cerveza artesanales con catering");
		eventoServicio.save(e);
		List<Evento> lista= new ArrayList<Evento>();
		lista.add(e);
		
		assertEquals(lista,eventoServicio.buscarNombre("Wapa"));
	}


}
