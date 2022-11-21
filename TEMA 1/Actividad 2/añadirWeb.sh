echo "Introduce el titulo que quieres insertar: "
read titulo

echo "Introduce una cabecera: "
read cabecera

echo "Introduce un mensaje: "
read mensaje

echo "Introduce el nombre del archivo: "
read archivo

nombreArchivo="$archivo.html"

echo "<html> <title>$titulo</title> <header>$cabecera</header> <p>$mensaje</p> </html>">/var/www/html/"$nombreArchivo"

