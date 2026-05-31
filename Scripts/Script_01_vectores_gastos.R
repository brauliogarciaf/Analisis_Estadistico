# ==============================================================================
# UNIDAD DE APRENDIZAJE: DISEÑOS EXPERIMENTALES
# TRABAJO: Laboratorio 1 - Vectores de Gastos y Tipos de Variables
# Estudiante: Braulio Antonio García Flores
# ==============================================================================

# 1. Definición del vector de gastos mensuales en pesos
gastos <- c(Alquiler = 1500, Celular = 300, Comestibles = 1577, Gym = 400, Otros = 1833)

# 2. Ordenar los elementos de mayor a menor gasto para análisis descriptivo
gastos_ordenados <- sort(gastos, decreasing = TRUE)
print(gastos_ordenados)

# 3. Visualización de los datos mediante un gráfico de barras
barplot(gastos_ordenados, 
        main = "Gastos por Categoría - Evidencia Inicial", 
        col = "lightblue",
        las = 1,
        ylab = "Monto ($)")
