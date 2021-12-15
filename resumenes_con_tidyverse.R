
vector = 1:10

for (numero in vector){
  print(numero*5)
}

vector = 1:10
nuevo_vector = NULL

for (numero in vector){
  if(numero>6){
    validacion de la condicion
  }
  nuevo_vector = append(nuevo_vector,numero*2)
}

umbral = 5
valor = 0

while (valor<umbral) {
  
  print("Hola soy un while")
  valor = valor+1
  
}


# revision de mi base de datos

dimension_tabla = dim(BaseDatos)

nrow(BaseDatos)
columnas = names(BaseDatos)
columnas = gsub(" ","",columnas)
names(BaseDatos) <- columnas

summary(BaseDatos)

library(tidyverse)

BaseDatos$PopTotal

str_detect(tolower())

paises_seleccionados = c("Colombia","Chile")

resumen = BaseDatos %>% filter(Location %in% paises_seleccionados,
                               Time>=2000&Time!=2021)

resumen2 = resumen %>% group_by(Location) %>% summarize(promedio_poblacion = mean(PopTotal))

resumen3 = resumen2 %>% arrange(desc(promedio_poblacion)) %>% 
  mutate(promedio_poblacion_m = round(promedio_poblacion/1000,2))



