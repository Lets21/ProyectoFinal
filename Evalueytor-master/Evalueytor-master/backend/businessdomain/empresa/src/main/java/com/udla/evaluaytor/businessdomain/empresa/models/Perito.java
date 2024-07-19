package com.udla.evaluaytor.businessdomain.empresa.models;

// Importación para el uso de anotaciones de persistencia.
import jakarta.persistence.Entity;

// Importaciones de Lombok para simplificar la creación de métodos comunes en clases de modelo.
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * Clase modelo de entidad para 'Perito', que representa un experto asociado a una empresa.
 * Extiende de la clase 'Empresa', heredando sus atributos y comportamientos.
 */
@Entity  // Anotación de JPA que indica que esta clase es una entidad que será mapeada a una tabla en una base de datos.
@Data    // Anotación de Lombok que genera automáticamente métodos getters, setters, toString, equals y hashCode.
@EqualsAndHashCode(callSuper = false)  // Genera implementaciones de equals y hashCode considerando solo los atributos de 'Perito', no los de 'Empresa'.
public class Perito extends Empresa {
    // No se definen atributos adicionales aquí. 'Perito' hereda todos los atributos de 'Empresa'.
    // Puedes agregar atributos específicos de 'Perito' si es necesario.
}
