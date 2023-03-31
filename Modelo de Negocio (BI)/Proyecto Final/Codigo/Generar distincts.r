# Cargamos las librerías necesarias
library(dplyr)

# Leemos el archivo csv
archivo <- read.csv("Datos Anuales - Original.csv", header = TRUE, stringsAsFactors = FALSE)

# Obtenemos las áreas únicas y asignamos un ID incremental
areas_unicas <- unique(archivo$Area)
datos_anuales_areas <- data.frame(Area = areas_unicas, Id = seq_along(areas_unicas))

# Guardamos el resultado en un nuevo archivo csv
write.csv(datos_anuales_areas, "Datos Anuales - Areas.csv", row.names = FALSE)
