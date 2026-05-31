# ==============================================================================
# UNIDAD DE APRENDIZAJE: Estadística en la Investigación Científica
# TRABAJO: Análisis de Chi-Cuadrada - Bondad de Ajuste
# Caso: Durabilidad de guantes de protección contra corte por áreas de producción
# Estudiante: Braulio Antonio García Flores
# ==============================================================================

# 1. DATOS OBSERVADOS (Frecuencia de cambio de guantes registrados en la muestra)
# Representa el conteo de incidentes o desgaste por cada zona de la planta
frecuencias_observadas <- c(Area_1 = 3, Area_2 = 4, Area_3 = 6, Area_4 = 11)

# 2. HIPÓTESIS ESTADÍSTICA
# H0: La duración del guante es uniforme en todas las áreas (No hay efecto del área).
# H1: La frecuencia de cambio no es uniforme (Al menos un área tiene un desgaste distinto).

# 3. EJECUCIÓN DE LA PRUEBA EN R
# Al no especificar probabilidades esperadas, R asume por defecto la distribución uniforme (p = 1/k)
resultado_chi2 <- chisq.test(frecuencias_observadas)

# 4. DESPLIEGUE DE RESULTADOS EN CONSOLA
print(resultado_chi2)

# Nota de interpretación: Si el p-valor > 0.05, se acepta H0. 
# Las diferencias se deben a variaciones naturales de la operación y no a un uso rudo sistemático.
