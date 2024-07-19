package com.udla.evaluaytor.businessdomain.empresa.dto;

// Importación de Lombok, una biblioteca que ayuda a reducir el código repetitivo en Java.
import lombok.Data;

/**
 * Clase DTO para crear o actualizar entradas en una matriz de evaluación.
 * Utilizada para transferir datos necesarios para las operaciones de creación y actualización.
 */
@Data  // Anotación de Lombok que genera automáticamente getters, setters, toString, equals, y hashCode.
public class MatrizEvaluacionCreateUpdateDTO {

    private String pregunta;           // Campo que almacena la pregunta de la matriz de evaluación.
    private int puntos;                // Puntos asignados a la pregunta, utilizados en la evaluación.
    private int requiereDocumento;     // Indicador (usualmente binario) si la respuesta a la pregunta requiere un documento adjunto.
    private Long categoriaId;          // ID de la categoría asociada a la pregunta, sirve como referencia foránea.
}


