# Cargamos las librerías necesarias
library(dplyr)
library(tidyr)

# Leemos el archivo csv
archivo <- read.csv("Datos Anuales - Original.csv", header = TRUE, stringsAsFactors = FALSE)

# Filtramos los datos para considerar solo los años entre 2016 y 2021
archivo_filtrado <- archivo %>% filter(Año >= 2016 & Año <= 2021)

# Agregamos los datos por área y año
datos_agregados <- archivo_filtrado %>%
  group_by(Area, Año) %>%
  summarise(Cantidad = sum(Cantidad))

# Convertimos el formato largo a ancho para tener una columna por cada año
datos_ancho <- datos_agregados %>%
  spread(key = Año, value = Cantidad)

# Calculamos la varianza y el porcentaje de varianza
datos_ancho$Var <- apply(datos_ancho[, 2:7], 1, var, na.rm = TRUE)
datos_ancho$`Var %` <- datos_ancho$Var / sum(datos_ancho$Var, na.rm = TRUE) * 100

# Guardamos el resultado en un nuevo archivo csv
write.csv(datos_ancho, "Datos_Agregados_Areas.csv", row.names = FALSE)
