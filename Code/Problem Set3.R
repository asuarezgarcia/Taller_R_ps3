# Solución P3

#Hacer con R-markdown

# p1.1
# Llamar paquetes y limpiar
rm(list=ls())
require(pacman)
p_load(tidyverse, rio, data.table)

# cargar el archivo
rutas <- list.files("pset-3/input", recursive = T , full.names = T) 
  #carga 3 carpetas, 1/año. Recusive lo hace para c/u
  # full names es para que ponga todos los archivos


# p1.2
rutas_resto <- str_subset(string = rutas, pattern = "Resto - Ca") #deben quedar 180 archivos

lista_resto <- import_list(file = rutas_resto)

rutas_resto[1]
str_sub(rutas_resto[35], start = 14,17)

for(i in length(lista_resto))
{
  lista_resto[[i]]$path <- rutas_resto[1]
  lista_resto[[i]]$year <- str_sub(lista_resto[[i]]$path) #Terminar
}

# 1,3
lista_resto[[36]] <- NULL
df_resto <- rbindlist( l=lista_resto , use.names = T, fill = T)













