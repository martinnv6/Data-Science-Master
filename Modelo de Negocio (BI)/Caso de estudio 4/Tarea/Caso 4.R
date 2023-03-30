# install.packages(c("openxlsx", "Hmisc", "scales", "officer", "flextable", "forecast", "datasets", "tseries", "WriteXLS", "stringr"))
library(openxlsx, quietly = TRUE)
library(Hmisc, quietly = TRUE)
library(scales)
library(officer)
library(flextable)
library(forecast)
library(datasets)
library(tseries)
library(WriteXLS)
library(stringr)

#Competidor 1
Comp1 <- read.csv("Modelo de Negocio (BI)/Caso de estudio 4/Datos/Competidor1.csv")

#Producto 1

ts.Comp1.1 <- ts(Comp1$Product1, frequency = 52, start = c(2019,1))
plot(ts.Comp1.1)

ARIMA.Comp1.1 <- auto.arima(ts.Comp1.1,D=1)
summary(ARIMA.Comp1.1)
plot(ARIMA.Comp1.1$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp1.1$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp1.1 <- forecast(ARIMA.Comp1.1,24,level = 95)
Forecast.Comp1.1
plot(Forecast.Comp1.1,main="Competidor1 Forecasting",
     ylab="Producto1 Volumen")


#Producto 2

ts.Comp1.2 <- ts(Comp1$Product2, frequency = 52, start = c(2019,1))
plot(ts.Comp1.2)

ARIMA.Comp1.2 <- auto.arima(ts.Comp1.2,D=1)
summary(ARIMA.Comp1.2)
plot(ARIMA.Comp1.2$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp1.2$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp1.2 <- forecast(ARIMA.Comp1.1,24,level = 95)
Forecast.Comp1.2
plot(Forecast.Comp1.2,main="Competidor1 Forecasting",
     ylab="Producto2 Volumen")

#Competidor 2

Comp2 <- read.csv("Modelo de Negocio (BI)/Caso de estudio 4/Datos/Competidor2.csv")

#Producto 1

ts.Comp2.1 <- ts(Comp2$Product1, frequency = 52, start = c(2019,1))
plot(ts.Comp2.1)

ARIMA.Comp2.1 <- auto.arima(ts.Comp2.1,D=1)
summary(ARIMA.Comp2.1)
plot(ARIMA.Comp2.1$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp2.1$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp2.1 <- forecast(ARIMA.Comp2.1,24,level = 95)
Forecast.Comp2.1
plot(Forecast.Comp2.1,main="Competidor2 Forecasting",
     ylab="Producto1 Volumen")
 
#Competidor 3

Comp3 <- read.csv("Modelo de Negocio (BI)/Caso de estudio 4/Datos/Competidor3.csv")

#Producto 1

ts.Comp3.1 <- ts(Comp3$Product1, frequency = 52, start = c(2019,1))
plot(ts.Comp3.1)

ARIMA.Comp3.1 <- auto.arima(ts.Comp3.1,D=1)
summary(ARIMA.Comp3.1)
plot(ARIMA.Comp3.1$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp3.1$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp3.1 <- forecast(ARIMA.Comp3.1,24,level = 95)
Forecast.Comp3.1
plot(Forecast.Comp3.1,main="Competidor3 Forecasting",
     ylab="Producto1 Volumen")

#Producto 2

ts.Comp3.2 <- ts(Comp3$Product2, frequency = 52, start = c(2019,1))
plot(ts.Comp3.2)

ARIMA.Comp3.2 <- auto.arima(ts.Comp3.2,D=1)
summary(ARIMA.Comp3.2)
plot(ARIMA.Comp3.2$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp3.2$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp3.2 <- forecast(ARIMA.Comp3.2,24,level = 95)
Forecast.Comp3.2
plot(Forecast.Comp3.2,main="Competidor3 Forecasting",
     ylab="Producto2 Volumen")

#Competidor 4

Comp4 <- read.csv("Modelo de Negocio (BI)/Caso de estudio 4/Datos/Competidor4.csv")

#Producto 1

ts.Comp4.1 <- ts(Comp4$Product1, frequency = 52, start = c(2019,1))
plot(ts.Comp4.1)

ARIMA.Comp4.1 <- auto.arima(ts.Comp4.1,D=1)
summary(ARIMA.Comp4.1)
plot(ARIMA.Comp4.1$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp4.1$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp4.1 <- forecast(ARIMA.Comp4.1,24,level = 95)
Forecast.Comp4.1
plot(Forecast.Comp4.1,main="Competidor4 Forecasting",
     ylab="Producto1 Volumen")

#Competidor 5

Comp5 <- read.csv("Modelo de Negocio (BI)/Caso de estudio 4/Datos/Competidor5.csv")

#Producto 1

ts.Comp5.1 <- ts(Comp5$Product1, frequency = 52, start = c(2019,1))
plot(ts.Comp5.1)

ARIMA.Comp5.1 <- auto.arima(ts.Comp5.1,D=1)
summary(ARIMA.Comp5.1)
plot(ARIMA.Comp5.1$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp5.1$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp5.1 <- forecast(ARIMA.Comp5.1,24,level = 95)
Forecast.Comp5.1
plot(Forecast.Comp5.1,main="Competidor5 Forecasting",
     ylab="Producto1 Volumen")

#Producto 2

ts.Comp5.2 <- ts(Comp5$Product2, frequency = 52, start = c(2019,1))
plot(ts.Comp5.2)

ARIMA.Comp5.2 <- auto.arima(ts.Comp5.2,D=1)
summary(ARIMA.Comp5.2)
plot(ARIMA.Comp5.2$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp5.2$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp5.2 <- forecast(ARIMA.Comp5.2,24,level = 95)
Forecast.Comp5.2
plot(Forecast.Comp5.2,main="Competidor5 Forecasting",
     ylab="Producto2 Volumen")

#Competidor 6

Comp6 <- read.csv("Modelo de Negocio (BI)/Caso de estudio 4/Datos/Competidor6.csv")

#Producto 1

ts.Comp6.1 <- ts(Comp6$Product1, frequency = 52, start = c(2019,1))
plot(ts.Comp6.1)

ARIMA.Comp6.1 <- auto.arima(ts.Comp6.1,D=1)
summary(ARIMA.Comp6.1)
plot(ARIMA.Comp6.1$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp6.1$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp6.1 <- forecast(ARIMA.Comp6.1,24,level = 95)
Forecast.Comp6.1
plot(Forecast.Comp6.1,main="Competidor6 Forecasting",
     ylab="Producto1 Volumen")

#Competidor 7

Comp7 <- read.csv("Modelo de Negocio (BI)/Caso de estudio 4/Datos/Competidor7.csv")

#Producto 1

ts.Comp7.1 <- ts(Comp7$Product1, frequency = 52, start = c(2019,1))
plot(ts.Comp7.1)

ARIMA.Comp7.1 <- auto.arima(ts.Comp7.1,D=1)
summary(ARIMA.Comp7.1)
plot(ARIMA.Comp7.1$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp7.1$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp7.1 <- forecast(ARIMA.Comp7.1,24,level = 95)
Forecast.Comp7.1
plot(Forecast.Comp7.1,main="Competidor7 Forecasting",
     ylab="Producto1 Volumen")

#Producto 2

ts.Comp7.2 <- ts(Comp7$Product2, frequency = 52, start = c(2019,1))
plot(ts.Comp7.2)

ARIMA.Comp7.2 <- auto.arima(ts.Comp7.2,D=1)
summary(ARIMA.Comp7.2)
plot(ARIMA.Comp7.2$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp7.2$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp7.2 <- forecast(ARIMA.Comp7.2,24,level = 95)
Forecast.Comp7.2
plot(Forecast.Comp7.2,main="Competidor7 Forecasting",
     ylab="Producto2 Volumen")

#Competidor 8

Comp8 <- read.csv("Modelo de Negocio (BI)/Caso de estudio 4/Datos/Competidor8.csv")

#Producto 1

ts.Comp8.1 <- ts(Comp8$Product1, frequency = 52, start = c(2019,1))
plot(ts.Comp8.1)

ARIMA.Comp8.1 <- auto.arima(ts.Comp8.1,D=1)
summary(ARIMA.Comp8.1)
plot(ARIMA.Comp8.1$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp8.1$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp8.1 <- forecast(ARIMA.Comp8.1,24,level = 95)
Forecast.Comp8.1
plot(Forecast.Comp8.1,main="Competidor8 Forecasting",
     ylab="Producto1 Volumen")

#Competidor 9

Comp9 <- read.csv("Modelo de Negocio (BI)/Caso de estudio 4/Datos/Competidor9.csv")

#Producto 1

ts.Comp9.1 <- ts(Comp9$Product1, frequency = 52, start = c(2019,1))
plot(ts.Comp9.1)

ARIMA.Comp9.1 <- auto.arima(ts.Comp9.1,D=1)
summary(ARIMA.Comp9.1)
plot(ARIMA.Comp9.1$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp9.1$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp9.1 <- forecast(ARIMA.Comp9.1,24,level = 95)
Forecast.Comp9.1
plot(Forecast.Comp9.1,main="Competidor9 Forecasting",
     ylab="Producto1 Volumen")

#Producto 2

ts.Comp9.2 <- ts(Comp9$Product2, frequency = 52, start = c(2019,1))
plot(ts.Comp9.2)

ARIMA.Comp9.2 <- auto.arima(ts.Comp9.2,D=1)
summary(ARIMA.Comp9.2)
plot(ARIMA.Comp9.2$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp9.2$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp9.2 <- forecast(ARIMA.Comp9.2,24,level = 95)
Forecast.Comp9.2
plot(Forecast.Comp9.2,main="Competidor9 Forecasting",
     ylab="Producto2 Volumen")

#Competidor 10

Comp10 <- read.csv("Modelo de Negocio (BI)/Caso de estudio 4/Datos/Competidor10.csv")

#Producto 10

ts.Comp10.1 <- ts(Comp10$Product1, frequency = 52, start = c(2019,1))
plot(ts.Comp10.1)

ARIMA.Comp10.1 <- auto.arima(ts.Comp10.1,D=1)
summary(ARIMA.Comp10.1)
plot(ARIMA.Comp10.1$x,col="blue")
par(new=TRUE)
plot(ARIMA.Comp10.1$fitted,col="red") 
title(main="Real vs Forecast")
Forecast.Comp10.1 <- forecast(ARIMA.Comp10.1,24,level = 95)
Forecast.Comp10.1
plot(Forecast.Comp10.1,main="Competidor10 Forecasting",
     ylab="Producto1 Volumen")

forecastresults <- list()
forecastresults[["1.1"]] <- forecast(ARIMA.Comp1.1,24,level = 95)
forecastresults[["1.2"]] <- forecast(ARIMA.Comp1.2,24,level = 95)
forecastresults[["2.1"]] <- forecast(ARIMA.Comp2.1,24,level = 95)
forecastresults[["3.1"]] <- forecast(ARIMA.Comp3.1,24,level = 95)
forecastresults[["3.2"]] <- forecast(ARIMA.Comp3.2,24,level = 95)
forecastresults[["4.1"]] <- forecast(ARIMA.Comp4.1,24,level = 95)
forecastresults[["5.1"]] <- forecast(ARIMA.Comp5.1,24,level = 95)
forecastresults[["5.2"]] <- forecast(ARIMA.Comp5.2,24,level = 95)
forecastresults[["6.1"]] <- forecast(ARIMA.Comp6.1,24,level = 95)
forecastresults[["7.1"]] <- forecast(ARIMA.Comp7.1,24,level = 95)
forecastresults[["7.2"]] <- forecast(ARIMA.Comp7.2,24,level = 95)
forecastresults[["8.1"]] <- forecast(ARIMA.Comp8.1,24,level = 95)
forecastresults[["9.1"]] <- forecast(ARIMA.Comp9.1,24,level = 95)
forecastresults[["9.2"]] <- forecast(ARIMA.Comp9.2,24,level = 95)
forecastresults[["10.1"]] <- forecast(ARIMA.Comp10.1,24,level = 95)

results_together <- do.call(rbind,lapply(names(forecastresults),function(x){
  transform(as.data.frame(forecastresults[[x]]), Name = x)
}))

wb <- createWorkbook()

addWorksheet(wb, "Forecasts")
writeData(wb, "Forecasts", results_together, rowNames = TRUE)
saveWorkbook(wb, "Forcasts.xlsx", overwrite = TRUE)
