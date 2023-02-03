library(tidyquant)
library(ggplot2)

#Descargamos toda la infromacion disponible de todos los activos dentro del SP500
sp_500 <- tq_index("SP500") %>% tq_get(get="stock.prices")
