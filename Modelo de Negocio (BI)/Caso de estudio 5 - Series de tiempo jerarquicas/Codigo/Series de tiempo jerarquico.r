library(hts)
library(forecast)

# obtener la lista de archivos de competidores en la carpeta "Datos"
comp_files <- list.files("Modelo de Negocio (BI)/Caso de estudio 5 - Series de tiempo jerarquicas/Datos/", pattern = "Competidor.*\\.csv$")

# crear una lista vacía para almacenar las series temporales por competidor
comp_ts <- list()

# iterar sobre los archivos de competidores
for (i in seq_along(comp_files)) {
  # leer el archivo CSV del competidor
  comp_data <- read.csv(paste0("Modelo de Negocio (BI)/Caso de estudio 5 - Series de tiempo jerarquicas/Datos/", comp_files[i]))
  
  # agregar una columna para el identificador del competidor
  comp_data$Competidor <- gsub("\\.csv", "", comp_files[i])
  
  # crear una serie de tiempo para el producto "Product1"
  ts_data <- ts(comp_data$Product1, frequency = 52, start = c(2019, 1))
  
  # agregar la serie temporal al marco de datos del competidor
  comp_data$ts_data <- ts_data
  
  # agregar el marco de datos del competidor a la lista de series temporales
  comp_ts[[i]] <- comp_data
  print(comp_ts)
}

# unir todas las series temporales en una sola matriz
all_ts <- do.call(rbind, lapply(comp_ts, "[", -1))

# crear la serie temporal jerárquica
hierarchical_ts <- hts(all_ts$ts_data, characters = c(1, 10))

# ajustar el modelo y hacer la predicción
hierarchical_fit <- forecast(hierarchical_ts, h = 24)

# guardar los resultados en un archivo Excel
write.xlsx(hierarchical_fit, "predicciones_jerarquicas.xlsx", sheetName = "Predicciones")
