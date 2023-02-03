library(tidyquant)
library(ggplot2)

#Descargamos toda la informacion disponible de todos los activos dentro del SP500
sp_500 <- tq_index("SP500") %>% tq_get(get="stock.prices")

#Creamos una funcion que grafique el qqplot e histogarama de los retornos logaritmicos 
plot_log_returns <- function(ticker, start_date, end_date) {

  #Primero firltramos para encontar el activo y las fechas deseadas
  stock_prices <- sp_500 %>%
    filter(symbol == ticker) %>%
    filter(date >= start_date & date <= end_date)
  #Calcualmos los retornos logratimicos con esta base filtarda
  stock_returns <- diff(log(stock_prices$close))
 }
#Llamamos solo 1 vez la funcion con la compañia y fecha desada
plot_log_returns("NWS", "2013-01-01", "2023-01-01")