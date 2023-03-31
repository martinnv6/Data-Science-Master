library(forecast)

# Obtener nombres de archivos de competidores
comp_files <- list.files("Modelo de Negocio (BI)/Caso de estudio 4/Datos/", pattern = "^Competidor.*\\.csv$")

# lista de nombres de productos por competidor
product_names <- list(c("Product1", "Product2"), 
                      c("Product1"), 
                      c("Product1", "Product2"),
                      c("Product1"), 
                      c("Product1", "Product2"), 
                      c("Product1"), 
                      c("Product1", "Product2"), 
                      c("Product1"), 
                      c("Product1", "Product2"), 
                      c("Product1"))

# función para ajustar el modelo y hacer la predicción
fit_forecast <- function(ts_data) {
  arima_model <- auto.arima(ts_data, D=1)
  forecast_result <- forecast(arima_model, 24, level=95)
  return(forecast_result)
}

# crear una lista vacía para almacenar los resultados de la predicción
forecast_results <- list()

# iterar sobre la lista de nombres de archivos y nombres de productos
for (i in seq_along(comp_files)) {
  # leer el archivo CSV del competidor
  comp_data <- read.csv(paste0("Modelo de Negocio (BI)/Caso de estudio 4/Datos/", comp_files[i]))
  
  # iterar sobre los nombres de productos para este competidor
  for (j in seq_along(product_names[[i]])) {
    # crear una serie de tiempo para el producto
    ts_data <- ts(comp_data[[product_names[[i]][j]]], frequency=52, start=c(2019, 1))
    
    # ajustar el modelo y hacer la predicción
    forecast_results[[paste0(i, ".", j)]] <- fit_forecast(ts_data)
  }
}
print(comp_files)
print(forecast_results)

# iterar sobre los resultados de la predicción y guardar cada uno en un archivo CSV
for (i in seq_along(forecast_results)) {
  # obtener el nombre del archivo
  file_name <- paste0("Modelo de Negocio (BI)/Caso de estudio 4/Datos Prediccion/Competidor", strsplit(names(forecast_results[i]), "\\.")[[1]][1], "_Producto", strsplit(names(forecast_results[i]), "\\.")[[1]][2], "_Prediccion", ".csv")
  
  # guardar los resultados en un archivo CSV
  write.csv(forecast_results[[i]], file_name, row.names=FALSE)
}