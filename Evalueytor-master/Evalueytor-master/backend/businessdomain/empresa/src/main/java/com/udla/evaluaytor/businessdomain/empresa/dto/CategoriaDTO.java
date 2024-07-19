package com.udla.evaluaytor.businessdomain.empresa.dto;

// Importación de Lombok, que proporciona anotaciones para simplificar la creación de getters, setters y otros métodos comunes.
import lombok.Data;

/**
 * Clase DTO para Categoría, utilizada para transferir datos de categorías entre procesos,
 * especialmente útil para recibir y enviar datos a través de la API.
 */
@Data  // Anotación de Lombok que genera automáticamente los métodos getters, setters, toString, equals y hashCode.
public class CategoriaDTO {

    private Long id;           // Identificador único de la categoría, usualmente usado para operaciones de base de datos.
    private String descripcion; // Descripción de la categoría, proporciona detalles sobre la misma.
    
}
