# Usa la imagen oficial de MySQL
FROM mysql:8.0

# Establece las variables de entorno para configurar la base de datos
ENV MYSQL_ROOT_PASSWORD=Password123
ENV MYSQL_DATABASE=my_database
ENV MYSQL_USER=mysqluser
ENV MYSQL_PASSWORD=Password123

# Copia el script SQL de inicialización
COPY init.sql /docker-entrypoint-initdb.d/

# Exponer el puerto 3306 para la conexión MySQL
EXPOSE 3306

# Comando por defecto para iniciar MySQL
CMD ["mysqld"]