#librerias
library(tidyverse)
library(ggplot2)

# filtro de la base de datos
BaseDatos = BaseDatos %>% filter(Location=="Colombia")

#transformaciones
subset_poblacion$grupos_anios = ifelse(subset_poblacion$Time<2000,"menores_2000",
                                       ifelse(subset_poblacion$Time<2030,"entre_2000_2030",
                                              ifelse(subset_poblacion$Time<2060,"entre_2030_2060","mayores_2060")))


#resumen de mi base de datos
subset_poblacion = BaseDatos %>% select(Time,PopFemale,PopMale,PopTotal)

#grafico de histograma para la poblacion total
hist(x = subset_poblacion$PopTotal)
hist(x = subset_poblacion$PopFemale)
hist(x = subset_poblacion$PopMale, main = "Histograma de la población Masculina",
     xlab = "Población Masculina", ylab = "Frecuencia")

#grafico de barras
plot(x = as.character(subset_poblacion$Time))

#graficos de dispersión
plot(x = subset_poblacion$PopFemale, y = subset_poblacion$PopMale)

#diagrama de caja y bigotes
boxplot(formula = subset_poblacion$PopFemale~subset_poblacion$grupos_anios)
boxplot(subset_poblacion$PopFemale)

##ggplot2
ggplot(data = subset_poblacion, aes(x = PopFemale, y = PopMale, colour = grupos_anios)) + theme_classic()

subset_poblacion$PopTotal

ggplot(subset_poblacion, aes(Time, PopTotal)) +
  geom_area(fill = rgb(0, 0.5, 1, alpha = 0.5)) + 
  theme_classic() +
  ggtitle("Comportamiento de la población colombiana hasta el 2100")




