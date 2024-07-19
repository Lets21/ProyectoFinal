package com.udla.evaluaytor.businessdomain.empresa;

// Importaciones necesarias de Spring Boot
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Clase principal de la aplicación Spring Boot para la gestión empresarial.
 * Esta clase es el punto de entrada para la ejecución de la aplicación.
 */
@SpringBootApplication  // Anotación que denota una aplicación de Spring Boot y habilita la auto-configuración, entre otros.
public class EmpresaApplication {

    /**
     * Método principal que inicia la aplicación Spring Boot.
     * @param args Argumentos de línea de comandos que pueden ser pasados a la aplicación.
     */
	public static void main(String[] args) {
		// Método estático run de la clase SpringApplication que arranca la aplicación.
		SpringApplication.run(EmpresaApplication.class, args);
	}

}

