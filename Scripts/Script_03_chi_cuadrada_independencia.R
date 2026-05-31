# ==============================================================================
# UNIDAD DE APRENDIZAJE: Estística en la Investigación Científica
# TRABAJO: Análisis de Chi-Cuadrada - Prueba de Independencia (Asociación)
# Caso: Evaluación de Materiales de EPP (Base Biológica vs. Base Sintética)
# Estudiante: Braulio Antonio García Flores
# ==============================================================================

# 1. CONSTRUCCIÓN DE LA TABLA DE CONTINGENCIA (Matriz de 2x2)
# Datos basados en la evaluación de 100 guantes industriales en planta
# Filas: Base Biológica, Base Sintética | Columnas: Durabilidad Baja (<6 días), Alta (>6 días)
tabla_contingencia <- matrix(c(15, 35,   # Base Biológica
                               25, 25),  # Base Sintética
                             nrow = 2, byrow = TRUE,
                             dimnames = list(Material = c("Base_Biologica", "Base_Sintetica"),
                                             Durabilidad = c("Baja_Menor_6dias", "Alta_Mayor_6dias")))

print("--- Tabla de Contingencia Operativa ---")
print(tabla_contingencia)

# 2. EJECUCIÓN DE LA PRUEBA DE INDEPENDENCIA
# Evaluamos si la fila (tipo de material) está asociada con la columna (durabilidad)
resultado_independencia <- chisq.test(tabla_contingencia, correct = FALSE) # Sin corrección de Yates para replicar Past4

print("--- Resultados de la Prueba de Chi-Cuadrada ---")
print(resultado_independencia)
