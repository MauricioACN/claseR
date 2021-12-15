
#library
library(tidyverse)

#analizar constantes

Conteo = 1
conteo_dos = 1.2
conteo <- "soy un texto"

comparacion = conteo!=Conteo

mi_vector = c(1,2,3,4,6,NA)
mi_vector_dos = c(1,2,"texto",4,6,NA)

mi_vector_dos[1]
mi_vector[1]

str(conteo_dos)

sum(mi_vector,na.rm = T)

length(mi_vector)

5^2
5**2

as.numeric("67")
as.integer(19.7)
as.character()


#listas

mi_lista = list(mi_vector,mi_vector_dos,comparacion)

mi_lista[1]

length(mi_lista[[1]])
str(mi_lista)

#factores

estrato = 1:6
estrato_factor = as.factor(estrato)

summary(estrato)
summary(estrato_factor)

a = c("Felipe","Bibina","Daniel","Alejandro","Leidy","Edwin","victor")
b = c("masculino","femenino","masculino","masculino","femenino","masculino","masculino")

mis_estudiantes = data.frame("nombre" = a,
                             "genero" = b)

str(mis_estudiantes)

summary(mis_estudiantes$nombre)
summary(as.factor(mis_estudiantes$nombre))


dim(mis_estudiantes)

muestra = c(1,as.integer(nrow(mis_estudiantes)/2),nrow(mis_estudiantes))

mis_estudiantes[muestra,2]

#transformacion a los datos
mis_estudiantes$genero = as.factor(mis_estudiantes$genero)
mis_estudiantes$genero_como_numero = as.numeric(mis_estudiantes$genero)
mis_estudiantes$nota = as.factor(c(5,2,1,1,5,2,4))
mis_estudiantes$nota_numero = as.numeric(as.character(mis_estudiantes$nota))
mis_estudiantes$paso = ifelse(mis_estudiantes$nota_numero<3,"perdio","paso")


str(mis_estudiantes)

#funciones

mi_primera_funcion = function(parametro1,parametro2){
  
  if(is.numeric(parametro1)&is.numeric(parametro2)){
    
    conteo = parametro1+parametro2
    conteo
  
  }
  else if(parametro1+parametro2==0){
    
    mensaje = "Esto nos da como resultado 0"
    mensaje
    
  }
  else{
    
    mensaje = "no son varialbes numericas"
    mensaje
    
  }
  
}

mi_primera_funcion(parametro1 = 10,parametro2 = 8)

mi_primera_funcion(parametro1 = "hola",parametro2 = 8)


##funcion de cadena de fibonacci

c(1,1,2,3,5,8)


#Fibonacci

fibonacci = function(n){
  
  secuencia = 1
  
  if (n < 0){
    "no valido"
  }
  else if(n<=2){
    secuencia = c(secuencia,1)
  }
  else{
    secuencia = c(secuencia,1)
  }
  secuencia
}

fibonacci(2)










