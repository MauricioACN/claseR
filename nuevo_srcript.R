sdsds
sdsd

summary(mis_estudiantes)

mis_estudiantes$nota_numero[1]

mis_estudiantes$nueva_varialbe =c(1,2,4,5,6,8,3)

#### mi script

library(readr)
library(tidyverse)

PopulationByAgeSex <- read_csv("Data/PopulationByAgeSex.csv")
View(PopulationByAgeSex)

summary(PopulationByAgeSex$Id)

#### problema origen ####

#pregunta

#como es el comportamiento de los generos en latinoamerica

#afirmacion/hipotesis

#variables importantes
base_nueva = PopulationByAgeSex %>% select(Location,Time,PopMale,PopFemale)

#select para seleccionar variables de un df

### 
unique(base_nueva$Location)

paises_latinoamerica = c("Colombia","Venezuela","Chile","Peru","Argentina")

#filter que permite filtrar por una o mas variables

latin_base = base_nueva %>% filter(Location %in% paises_latinoamerica)


#mutate nuevas variables dentro de un data frame
latin_base_poptotal = latin_base %>% mutate(PopTotal = PopMale+PopFemale)


#resumenes
#group_by agrupa por una o multiples variables
#summarize para calcular metricas sobre esas/esa variable/s agrupadas
#arrange ordendar y se puede usar con desc() para mostrarlo de manera descendente

sum_max_pop = latin_base_poptotal %>% 
  group_by(Location) %>% 
  summarize(max_popFemale = max(PopFemale),
            max_popMale = max(PopMale)) %>%
  mutate(diferencia = max_popFemale-max_popMale) %>% 
  arrange(desc(diferencia))

#graficos

ggplot(sum_max_pop, aes(x = max_popMale, fill = Location)) + 
  geom_bar()


# spread y gather
nuevo_df_collaps = gather(sum_max_pop,categorias,valores,-Location)
nuevo_df_collaps_2 = sum_max_pop %>% gather(categorias,valores,-Location)

nuevo_df_collaps_nuevo = nuevo_df_collaps %>% filter(categorias!="diferencia")

#grafico correcto
ggplot(nuevo_df_collaps_nuevo, aes(x = categorias, y = valores, fill = Location)) + 
  geom_bar(stat='identity')

#por pais
ggplot(nuevo_df_collaps_nuevo, aes(x = Location, y = valores, fill = categorias)) + 
  geom_bar(stat='identity')

#comportamiento por tiempo



