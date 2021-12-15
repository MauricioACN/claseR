#librarias
library(tidyverse)


#carga de datos
base = read.csv("Data/PopulationByAgeSex.csv", header = T, sep = ",", dec = ".", stringsAsFactors = F)


#resumenes para joins
resumen_colombia = base %>% filter(Location == "Colombia",
                                   Time<2021)

futuro_colombia = base %>% filter(Location == "Colombia",
                                   Time>2021)

#unir a nivel de filas, tener en cuenta mismas columnas y mismos nombres
total_colombia = rbind(resumen_colombia,futuro_colombia)

#unir a nivel de columas, tener en cuenta mismas fila
resumen_colombia = resumen_colombia %>% select(Time,PopTotal)
futuro_colombia = futuro_colombia %>% select(PopTotal)
futuro_colombia = data.frame(Poblacion = futuro_colombia[c(1:71),])

total_colombia_2 = cbind(resumen_colombia,futuro_colombia)

#joins
base_total = left_join(x = resumen_colombia,suffix = c("nueva","vieja"), y = futuro_colombia, by = c("Location"="Location"))
right_join()
inner_join()




