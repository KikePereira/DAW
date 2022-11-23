#!/bin/bash

#Cogemos el archivo hosts
archivoHosts="etc/hosts"

echo "Introduce el hosts que deseas añadir: "
#Host que queremos añadir
read nuevoHost

echo "Introduce la IP: "
#Ip que queremos añadir
read nuevaIP

#Buscar si el host ya existe 
# -w Busca una palabra // -q Busqueda en silencio
if [[grep -q -w "$nuevoHost" "$archivoHosts"]] 
then #Si existe
        echo "Ese Host ya existe" 
else #No existe
        echo "$nuevaIP $nuevoHost" >> "$archivoHosts" 
        echo "Se ha añadido el host a la escucha" 
fi #Fin if
