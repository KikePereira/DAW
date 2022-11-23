#!/bin/bash

#Cogemos el archivo de configuracion de los puertos
archivoPuertos="etc/apache2/ports.conf"

echo "Introduce puerto que quieres añadir: "
#Puerto que queremos añadir
read puerto
#Cadena que se introducira en el archivo de configuracion de puertos
cadenaPuerto="Listen $puerto"

#Buscar si el puerto a introducir ya existe

#-F Buscar cadena de texto // -x Busqueda en la misma linea completa // -q Busq>
if [[grep -Fxq "$cadenaPuerto" "$archivoPuertos"]]

then #Si existe
        echo "Puerto ya existente"
else #No existe
        echo "$cadenaPuerto" >> "$archivoPuertos"
        echo "Se añadio el puerto $puerto."
fi #Fin if
 
