/**
 * 
 */
package com.salesianostriana.dam.configuracion;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * Este es la clase para la cofiguracio de rutas. 
 * @author jesus
 *
 */
@Configuration
@EnableWebMvc
public class MvcConfig implements WebMvcConfigurer {

	/**
	 * Este es el metodo para la configuracio de las rutas de javaScript, css, imagenes subidas y imagenes del programa.
	 */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/images/**").addResourceLocations("file:files/");
		registry.addResourceHandler("/img/**").addResourceLocations("classpath:static/img/");
		registry.addResourceHandler("/css/**").addResourceLocations("classpath:static/css/");
		registry.addResourceHandler("/js/**").addResourceLocations("classpath:static/js/");

	}

	/**
	 * Este es el metodo para configurar las rutas para el inicio y el acceso denegado.
	 */
	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addViewController("/inicio");
		registry.addViewController("/acceso-denegado");
	}
}
