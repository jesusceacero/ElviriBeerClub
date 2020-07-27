package com.salesianostriana.dam.servicios;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.salesianostriana.dam.model.Cerveza;
import com.salesianostriana.dam.repository.CervezaRepository;
import com.salesianostriana.dam.storage.StorageService;

/**
 * Este es el servicio de el ForBean de cerveza.
 * @author jesus
 *
 */
@Service
public class CervezaFormBeanService {
	
	@Autowired
	CervezaRepository cervezaRepository;
	
	@Autowired
	StorageService storageService;
	
	
	/**
	 * 
	 * @param p Debe contener el atributo fileUrl a nulo; si no, su valor será ignorado
	 */
	public void add(Cerveza c, MultipartFile file) {
				
		String fileName = storageService.store(file);//Guarda la imagen
		//Guardamos nombre de la imagen almacenada en el atributo de la entidad
		c.setFoto(fileName);
		//Guardamos la entidad en la base de datos y en ella ya irá el nombre del archivo
		//en la correspondiente propiedad (fileUrl)
		cervezaRepository.save(c);
		
	}
	
	
	

}
