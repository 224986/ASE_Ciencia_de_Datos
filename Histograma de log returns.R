library(tidyquant)
library(ggplot2)


#sp_500 <- readRDS("/Users/ljeg/Documents/GitHub/ASE_Ciencia_de_Datos/Base_SP500.rds")
plot_log_returns <- function(ticker, start_date, end_date) {


  stock_prices <- sp_500 %>%
    filter(symbol == ticker) %>%
    filter(date >= start_date & date <= end_date)
  log_returns <- diff(log(stock_prices$close))
}

plot_log_returns("KR", "2022-01-01", "2022-12-31")
